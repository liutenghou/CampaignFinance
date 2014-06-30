#congress API = e2b85ac8d906b8d0941ae882c42337ac:1:55546544
#opensecrets API = 5ec968f2aea2ff0451baa3f1ef8ce294
class ApiConnectController < ApplicationController
  layout false

  def index
  	@array = [1,2,3,4,5]

  	require 'open-uri'
	require 'json'
  	
	#members info
	candSummaryFile = open()

  	#campaign contributions
  	file = open('http://www.opensecrets.org/api/?method=candContrib&cid=N00007360&cycle=2014&output=json&apikey=5ec968f2aea2ff0451baa3f1ef8ce294').read
  	@openSecretsData = JSON.parse(file)



  end

  def secrets
  	redirect_to("http://www.opensecrets.org/")
  end
end
