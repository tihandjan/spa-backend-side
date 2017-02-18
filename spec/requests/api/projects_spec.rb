require 'rails_helper'

RSpec.describe 'Projects API', type: :request do
    let!(:project) { FactoryGirl.create_list(:project, 3) }

    it 'sends projects data' do
        get '/projects', nil, { 'Content-type': 'application/json' }
        json = JSON.parse(response.body)

        expect(response.status).to eq(200)
        expect(json.count).to eq(3)
        expect(json[0]['title']).to eq(project.first.title)
    end

    it 'sends particular project' do
        get "/projects/#{project.first.id}", nil, { 'Content-type': 'application/json' }

        expect(response.status).to eq(200)
        expect(json['title']).to eq(project.first.title)
    end

    it 'create new project' do
        params = {project: { title: 'project title' }}
        post '/projects', params.to_json, { 'Content-type': 'application/json' }

        expect(response.status).to eq(201)
        expect(json['title']).to eq('project title')
    end
end