class PagesController < ApplicationController
  def home
    @characters = Character.all
    @titans = Titan.all
  end
end
