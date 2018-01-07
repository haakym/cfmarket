require 'open-uri'
require 'json'

class MarketsController < ApplicationController
  def index
  	response = open('https://coinfalcon.com/api/v1/markets/')
  	@markets = JSON.parse(response.read)['data']
  end
end
