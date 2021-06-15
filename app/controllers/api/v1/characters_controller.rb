class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: [:show]
  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @characters = Character.where(sql_query, query: "%#{params[:query]}%")
    else
      @characters = Character.all
    end
  end

  def show
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end
end
