require 'spec_helper'

describe CommentPolicy, type: :policy do
  subject { described_class }

  permissions :update?, :destroy? do
    it 'grants access if user is owner' do
      user = build(:user)
      expect(subject).to permit(user, build(:comment, user: user))
    end
  end
end