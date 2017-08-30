require 'rails_helper'

RSpec.describe HomeController, type: :routing do    
  it { expect(get: root_path).to be_routable }
    
  it do
    expect(get: root_path)
      .to route_to controller: "home", action: 'index'
  end
end