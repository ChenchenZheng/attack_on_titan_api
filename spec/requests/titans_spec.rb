require 'rails_helper'

RSpec.describe 'Titans', type: :request do
  describe 'GET /titans' do
    it 'returns success code' do
      get '/api/v1/titans'
      expect(response).to have_http_status(200)
    end

    it 'returns all titans' do
      titans = Titan.select(:id, :name, :other_names, :abilities, :current_inheritor, :former_inheritors, :allegiance)
      get '/api/v1/titans'
      expect(response.body).to eq(titans.to_json)
    end
  end

  describe 'GET /titans/:id' do
    it 'returns success code' do
      get "/api/v1/titans/#{Titan.first.id}"
      expect(response).to have_http_status(200)
    end

    it 'returns titan' do
      titan = Titan.select(:id, :name, :other_names, :abilities, :current_inheritor, :former_inheritors, :allegiance).first
      get "/api/v1/titans/#{Titan.first.id}"
      expect(response.body).to eq(titan.to_json)
    end
  end
end
