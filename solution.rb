require 'sinatra'
# require 'rubygems'
require "browser"


get '/' do
	
	browser = Browser.new(request.env['HTTP_USER_AGENT'], accept_language: "en-us")
	# "#{browser.name}"
	@browser_name=browser.name
	erb :index

end