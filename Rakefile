
task :default => [:test]

task :test do
  ruby "./test/test_all_rubies.rb . "
end

desc "exec"
task :exec, :file do |t, args|
  ruby "./test/test.rb . #{args[:file]} "
end
