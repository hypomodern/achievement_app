class LandingController < ApplicationController

  def index
    @chapters = Chapter.includes(:achievements).all
  end

end