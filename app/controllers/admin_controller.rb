class AdminController < ApplicationController
  http_basic_authenticate_with name: "mhw", password: "tf02bls"

  def index

  end
end