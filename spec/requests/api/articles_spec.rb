require 'rails_helper'

RSpec.describe "Articles API", type: :request do
    it 'sends public articles' do
        article = FactoryGirl.create_list(:article, 3)
        get '/api/articles', nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)
        json = JSON.parse(response.body)

        expect(json.count).to eq(3)
        expect(json[0]['title']).to eq(article.first.title)
    end
end