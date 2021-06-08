class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: [:show]
  def index
    @characters = Character.all
  end

  def show
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end
end
