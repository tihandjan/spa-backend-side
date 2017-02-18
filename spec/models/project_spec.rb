require 'rails_helper'

describe Project, type: :model do
    it { should validate_presence_of :title }
    it { should validate_presence_of :summary }
    it { should validate_presence_of :description }
end