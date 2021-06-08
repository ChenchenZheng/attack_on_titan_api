class Api::V1::CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
  end
end
