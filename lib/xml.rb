require 'nokogiri'

configuration_root_dir = File.join(File.dirname(__FILE__),"..","fixtures")

file_contents = File.read "#{configuration_root_dir}/configuration.xml"

configuration_data = Nokogiri::XML(file_contents).root

configuration_data.xpath('environment').each do |environment|
  
  puts environment.xpath('@name')
  puts environment.xpath('hostName').text
  puts environment.xpath('hostTitle').text
  
end
