require 'rails_helper'

RSpec.describe "Articles API", type: :request do
    let!(:article) { FactoryGirl.create_list(:article, 3) }
    
    it 'sends public articles' do
        get '/api/articles', nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)

        expect(json.count).to eq(3)
        expect(json[0]['title']).to eq(article.first.title)
    end

    it 'sends particular article' do
        get "/api/articles/#{article.first.id}", nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)
        expect(json['title']).to eq(article.first.title)
    end
end