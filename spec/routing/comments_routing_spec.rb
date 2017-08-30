require 'rails_helper'

RSpec.describe CommentsController, type: :routing do
  describe 'routing to comments' do
    let(:home_path)       { "/" }
    let(:comments_controller) { "comments"}
    let(:comment_id)          { '1' }

    it { expect(get: comments_path).to be_routable }
    
    it do
      expect(get: comments_path)
        .to route_to controller: comments_controller, action: 'index'
    end
 
    it do
      expect(get: "#{comments_path}/new")
        .to route_to controller: comments_controller, action: 'new'
    end

    it do
      expect(post: comments_path).to route_to controller: comments_controller,
                                           action: 'create'
    end

    it do
      expect(get: "#{comments_path}/#{comment_id}/edit")
        .to route_to controller: comments_controller, action: 'edit', id: comment_id
    end

    it do
      expect(put: "#{comments_path}/#{comment_id}")
        .to route_to controller: comments_controller, action: 'update', id: comment_id
    end

    it do
      expect(patch: "#{comments_path}/#{comment_id}")
        .to route_to controller: comments_controller, action: 'update', id: comment_id
    end

    it do
      expect(delete: "#{comments_path}/#{comment_id}")
        .to route_to controller: comments_controller, action: 'destroy',
                     id: comment_id
    end
  end
end