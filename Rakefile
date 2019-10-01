require "bundler/gem_tasks"
require "rake/testtask"

task :default => [:test, :smoke]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

desc "Run smoke tests"
task :smoke do
  sh "docker build -t meowcop/smoke -f test/smoke/Dockerfile ."
  sh "docker run -it --rm meowcop/smoke" do |ok, _res|
    abort "Test failed! For details, run `docker run -it --rm --entrypoint=rubocop meowcop/smoke test/smoke -f s`" unless ok
  end
end
