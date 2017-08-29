require 'rails_helper'

describe User, type: :model do
  context "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_length_of(:first_name).is_at_most(32) }
    
    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:last_name).is_at_most(64) }
  end
end