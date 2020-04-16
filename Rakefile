require "bundler/gem_tasks"
require "rake/testtask"

task :default => ["config:generate", "config:verify", :rubocop, :test, :smoke]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

desc "Run RuboCop"
task :rubocop do
  sh "rubocop"
end

desc "Run smoke tests"
task :smoke do
  sh "docker build -t meowcop/smoke -f test/smoke/Dockerfile ."
  sh "docker run --rm meowcop/smoke" do |ok|
    unless ok
      sh "docker run --rm --entrypoint=rubocop meowcop/smoke test/smoke --format=simple"
    end
  end
end

namespace :config do
  desc "Generate the configuration file"
  task :generate do
    require "rubocop"
    require "active_support/core_ext/class/subclasses"
    require "active_support/core_ext/string/inflections"

    enabled_cops = [
      { name: "StringHashKeys", justification: "In many cases, hash keys should be a symbol, not a string." }
    ]
    enabled_cop_names = enabled_cops.map { |cop| cop.fetch(:name) }

    disabled_cops = RuboCop::Cop::Cop.descendants.map(&:name).sort.flat_map do |cop_class_name|
      # Disable all Style cops
      next if cop_class_name.deconstantize != RuboCop::Cop::Style.name

      cop_name = cop_class_name.demodulize
      next if enabled_cop_names.include? cop_name

      [
        "Style/#{cop_name}:",
        "  Enabled: false"
      ]
    end.compact

    lines = config_file.readlines.map(&:chomp!)

    # Insert disabled cops
    insert_cops!(
      lines,
      "# === Disabled cops: BEGIN ===",
      "# === Disabled cops: END ===",
      disabled_cops
    )

    # Insert enabled cops
    enabled_cop_settings = enabled_cops.flat_map do |cop|
      [
        "# #{cop.fetch(:justification)}",
        "Style/#{cop.fetch(:name)}:",
        "  Enabled: true"
      ]
    end
    insert_cops!(
      lines,
      "# === Enabled cops: BEGIN ===",
      "# === Enabled cops: END ===",
      enabled_cop_settings
    )

    config_file.write(lines.join("\n") + "\n")
  end

  desc "Verify the generated configuration file"
  task :verify do
    system("git diff --exit-code --quiet '#{config_file}'") or abort "Commit changed #{config_file}."
  end

  def config_file
    Pathname(__dir__) / "config" / "rubocop.yml"
  end

  def insert_cops!(lines, begin_line, end_line, cops)
    begin_index = lines.index(begin_line)
    end_index = lines.index(end_line)

    # clear
    index_range = (begin_index + 1)..(end_index - 1)
    lines.delete_if.with_index { |_, index| index_range.cover? index }

    # insert
    lines.insert(begin_index + 1, *cops)
  end
end
