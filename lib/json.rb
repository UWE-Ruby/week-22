
require 'json'

configuration_root_dir = File.join(File.dirname(__FILE__),"..","fixtures")

file_contents = File.read "#{configuration_root_dir}/configuration.json"

configuration_data = JSON.parse file_contents

puts configuration_data