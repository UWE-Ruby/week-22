require 'YAML'

configuration_root_dir = File.join(File.dirname(__FILE__),"..","fixtures")

file_contents = File.read "#{configuration_root_dir}/configuration.yml"

configuration_data = YAML::load file_contents

puts configuration_data