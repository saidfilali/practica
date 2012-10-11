task :default => :test

desc "Run ./bin/calradio.rb "
task :simple do
  sh "ruby -Ilib bin/calradio.rb"
end

desc "Run ./test/tc_calradio.rb"
task :test do 
  sh "ruby -Ilib test/tc_calradio.rb"
end
