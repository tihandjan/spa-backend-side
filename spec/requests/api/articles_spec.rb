require 'rails_helper'

RSpec.describe "Articles API", type: :request do
    let!(:article) { FactoryGirl.create_list(:article, 3) }
    
    it 'sends public articles' do
        get '/articles', nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)

        expect(json.count).to eq(3)
        expect(json[0]['title']).to eq(article.first.title)
    end

    it 'sends particular article' do
        get "/articles/#{article.first.id}", nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)
        expect(json['title']).to eq(article.first.title)
    end

    it 'create new article' do
        params = {article: {title: "tested", summary: 'summary', description: 'description'}}
        post '/articles', params.to_json, { 'Content-type': 'application/json' }

        expect(json['title']).to eq('tested')
        expect(response.status).to eq(201)
    end

    it 'edit article' do
        params = {article: {title: "edited", summary: 'summary', description: 'description'}}
        patch "/articles/#{article.first.id}", params.to_json, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)
        expect(json['title']).to eq('edited')
    end

    it 'delete article' do
        delete "/articles/#{article.last.id}", nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(204)
        expect(Article.exists?(article.last)).to be_falsy
    end
end