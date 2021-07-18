require 'rails_helper'

RSpec.describe 'Characters', type: :request do
  describe 'GET /characters' do
    it 'returns success code' do
      get '/api/v1/characters'
      expect(response).to have_http_status(200)
    end

    it 'returns all characters' do
      characters = Character.select(:id, :first_name, :last_name, :species, :age, :height, :residence, :status, :alias)
      get '/api/v1/characters'
      expect(response.body).to eq(characters.to_json)
    end
  end

  describe 'GET /characters/:id' do
    it 'returns success code' do
      get "/api/v1/characters/#{Character.first.id}"
      expect(response).to have_http_status(200)
    end

    it 'returns character' do
      character = Character.select(:id, :first_name, :last_name, :species, :age, :height, :residence, :status, :alias).first
      get "/api/v1/characters/#{Character.first.id}"
      expect(response.body).to eq(character.to_json)
    end
  end
end
