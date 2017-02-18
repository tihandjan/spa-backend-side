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
end

describe "receives POST request with body", :type => :request do
    it 'sfvd' do
        params = {:article => {:title => "tested"}}
        post '/articles', params.to_json, { 'Content-type': 'application/json' }

        expect(json['title']).to eq('tested')
        expect(response.status).to eq(201)
    end
end