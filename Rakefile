require "bundler/gem_tasks"
require "rake/testtask"

task default: [:rubocop, :test, :smoke]

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
  sh "docker", "build", "-t", "meowcop/smoke", "-f", "test/smoke/Dockerfile", "."
  sh "docker", "run", "--rm", "meowcop/smoke"
end
