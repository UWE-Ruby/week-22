require 'sinatra'

configuration_root_dir = File.join(File.dirname(__FILE__),"..","fixtures")


get '/configuration.json' do
  
  File.read "#{configuration_root_dir}/configuration.json"
  
end

get '/configuration.xml' do
  
  File.read "#{configuration_root_dir}/configuration.xml"
  
end

get '/configuration.yml' do
  
  File.read "#{configuration_root_dir}/configuration.yml"
  
end