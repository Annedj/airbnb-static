require 'open-uri'

class FlatsController < ApplicationController
  # I added a constant to store the URL and froze it so it cannot be changed:
  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze

  before_action :set_flats

  def index
    # this method is empty but we need it to have the index view
  end

  def show
    flat_id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == flat_id}
  end

  private

  def set_flats
    flats_json = URI.open(URL).read
    @flats = JSON.parse(flats_json)
  end
end
