require "bundler/gem_tasks"

Rake::TestTask.new do |t|
  t.libs << 'lib/markdown_helper'
  t.test_files = FileList['test/lib/markdown_helper/*_test.rb']
  t.verbose = true
end
 
task :default => :test