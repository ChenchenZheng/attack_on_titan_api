class PagesController < ApplicationController
  def home
    @characters = Character.all
  end
end
