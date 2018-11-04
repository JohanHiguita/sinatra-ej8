require 'sinatra'
# require 'rubygems'
require "browser"
require "device_detector"


get '/' do
	
	#gem browser:
	# browser = Browser.new(request.env['HTTP_USER_AGENT'], accept_language: "en-us")
	# # "#{browser.name}"
	# @browser_name=browser.name

	#gem device_detector
	client = DeviceDetector.new(request.env['HTTP_USER_AGENT'])
	@browser_name=client.name # => 'Chrome'
	erb :index

end