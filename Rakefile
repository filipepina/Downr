require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/downr'
  t.test_files = FileList['test/lib/downr/*_test.rb']
  t.verbose = true
end
 
task :default => :test