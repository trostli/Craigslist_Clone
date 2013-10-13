require 'sinatra'
require 'sinatra/activerecord'
require_relative 'models/item'

set :database, 'postgres://localhost/App' || ENV['DATABASE_URL']

enable :sessions

get '/' do
	erb :index
end