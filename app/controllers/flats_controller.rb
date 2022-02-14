require 'open-uri'

class FlatsController < ApplicationController
  def index
    # load anything for the view
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json = URI.open(url).read
    @flats = JSON.parse(json)
    # @flats = Flat.all (tomorrow)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json = URI.open(url).read
    @flats = JSON.parse(json)
    # @flat = Flat.find(params[:id]) (tomorrow)
    # params[:id] is coming from the URL
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end
end
