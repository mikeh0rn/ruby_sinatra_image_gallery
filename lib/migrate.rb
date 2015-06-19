require 'sequel'

ENV["RACK ENV"] ||= "development"
DB = Sequel.connect "sqlite://db/#{ENV["RACK_ENV"]}.sqlite3"

DB.create_table :images do
  primary key :id
  String :title
  String :file
end