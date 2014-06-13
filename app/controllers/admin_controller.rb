class AdminController < ApplicationController
  http_basic_authenticate_with name: "mhw", password: ENV['ADMIN_PASSWORD']

  def index
    @chapters     = Chapter.all
    @achievements = Achievement.unscoped.includes(:chapter).order("chapters.index, achievements.name").all
    @props        = Prop.unscoped.includes(:chapter).order("chapters.index, props.name").all
  end
end