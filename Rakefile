require "bundler/gem_tasks"
require "rake/testtask"

task :default => [:test, :smoke, :lint]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

desc "Run smoke tests"
task :smoke do
  sh "docker build -t meowcop/smoke -f test/smoke/Dockerfile ."
  sh "docker run -it --rm meowcop/smoke"
end

desc "Lint"
task :lint do
  sh "bundle exec rubocop --config config/rubocop.yml"
end
