class LandingController < ApplicationController

  def index
    @chapters = Chapter.includes(:achievements).includes(:props).all
  end

end