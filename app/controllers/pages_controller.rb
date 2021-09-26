class PagesController < ApplicationController
  def home
    ahoy.track "Homepage", title: "Homepage visit"
    @characters = Character.all
    @titans = Titan.all
  end
end
