begin
  require "kitchen/rake_tasks"
  Kitchen::RakeTasks.new
rescue LoadError
  puts ">>>>> Kitchen gem not loaded, omitting tasks" unless ENV["CI"]
end

desc "Runs chef-solo with the given config/<dna>.json"
task :chef, :dna do |t, args|
  config_dir = File.expand_path(File.dirname(__FILE__) + '/chef-solo/config')
  fail "chef-solo/config/#{args[:dna]}.json does not exist" unless File.exists?(config_dir + "/#{args[:dna]}.json")
  sh "chef-solo -c #{config_dir}/solo.rb -j #{config_dir}/#{args[:dna]}.json"
end
