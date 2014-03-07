class AdminController < ApplicationController
  http_basic_authenticate_with name: "mhw", password: "tf02bls"

  def index
    @chapters     = Chapter.all
    @achievements = Achievement.includes(:chapter).order("chapters.name").all
  end
end