require 'rails_helper'

RSpec.describe 'Projects API', type: :request do
    it 'sends projects data' do
        project = FactoryGirl.create(:project)

        get '/api/projects', nil, { 'Content-type': 'application/json' }
        json = JSON.parse(response.body)

        expect(response.status).to eq(200)
        expect(json.count).to eq(1)
        expect(json[0]['title']).to eq(project.title)
    end
end