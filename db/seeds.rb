# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

p "db:seed RAILS_ENV=#{Rails.env}"

Dir.entries("#{Rails.root}/db/seeds/#{Rails.env}").sort_by{|name| name}.select{|name|name =~ /^[a-zA-Z_0-9]+\.rb/}.map{|name|name.gsub(/\.rb/, "")}.each do |seeds_name|
  path = "#{Rails.root}/db/seeds/#{Rails.env}/#{seeds_name}.rb"
  puts path
  require(path) if File.exist?(path)
end
