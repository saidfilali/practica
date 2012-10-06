task :default => :rps

desc "Run ppt.rb with ruby"
task :rps do
  sh "ruby ppt.rb scissors"
end

desc "makes a tar.gz with all the files"
task :tar do
  sh "tar  cvzf rockpaperscissors.tar.gz *.rb README Rakefile"
end

desc "clean the temporal files"
task :clean do
  sh "rm -fr *.gz *~ *swp"
end
