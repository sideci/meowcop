require "bundler/gem_tasks"
require "rake/testtask"

task :default => ["config:generate", "config:verify", :test, :smoke]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

desc "Run smoke tests"
task :smoke do
  sh "docker build -t meowcop/smoke -f test/smoke/Dockerfile ."
  sh "docker run --rm meowcop/smoke" do |ok, _res|
    abort "Test failed! For details, run `docker run -it --rm --entrypoint=rubocop meowcop/smoke test/smoke -f s`" unless ok
  end
end

namespace :config do
  desc "Generate the configuration file"
  task :generate do
    require "rubocop"
    require "active_support/core_ext/class/subclasses"

    disabled_cops = RuboCop::Cop::Cop.descendants.map do |cls|
      # Disable all Style cops
      match = cls.name.match(/\ARuboCop::Cop::Style::(.+)\z/)
      if match
        cop_name = match[1]
        <<~CONFIG.strip
          Style/#{cop_name}:
            Enabled: false
        CONFIG
      else
        nil
      end
    end.compact.sort

    lines = config_file.readlines
    begin_index = lines.index("# === Disabled cops: BEGIN ===\n")
    if lines.at(begin_index + 1) == "# === Disabled cops: END ===\n"
      lines.insert(begin_index + 1, *disabled_cops)
      config_file.write(lines.join("\n") + "\n")
    end
  end

  desc "Verify the generated configuration file"
  task :verify do
    system("git diff --exit-code --quiet '#{config_file}'") or abort "Commit changed #{config_file}."
  end

  def config_file
    Pathname(__dir__) / "config" / "rubocop.yml"
  end
end
