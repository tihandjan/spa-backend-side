require 'rails_helper'

describe Api::ArticlesController, type: :controller do
    it 'dfv' do 
        params = {:article => {:title => "andre"}}
        post '/api/articles', params.to_json, { 'Content-type': 'application/json' }
    end
end