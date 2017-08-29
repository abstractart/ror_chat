require 'rails_helper'

describe Comment, type: :model do
  it { should validate_length_of(:text).is_at_most(512) }
  it { should belong_to(:user) }
end
