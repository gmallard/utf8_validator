require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "utf8_validator"
  gem.homepage = "http://github.com/gmallard/utf8_validator"
  gem.license = "MIT"
  gem.summary = %Q{A UTF-8 Encoding Validator.}
  gem.description = %Q{A State Machine implementation of a UTF-8 Encoding 
Validation algorithm.}
  gem.email = "allard.guy.m@gmail.com"
  gem.authors = ["Guy Allard"]

  #  Runtime Dependencies - None at present
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #
  # Bundler/Jeweler takes care of this via the Gemfile.lock process
  # gem.add_development_dependency 'bundler', '>= 2.1.2'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

# require 'rake/rdoctask'
require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "UTF-8 Validator #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
