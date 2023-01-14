require 'rails_helper'

RSpec.describe Group, type: :system do
  subject(:group) { Group.create(name: 'Food', icon: 'https://freepngimg.com/download/burger/6-2-burger-png-image.png', user_id: 1) }

  it 'should not be empty' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'should have the right value' do
    expect(group.name).to eq('Food')
  end

  it 'should not be empty' do
    group.icon = nil
    expect(group).to_not be_valid
  end

  it 'should have the right value' do
    expect(group.icon).to eq('https://freepngimg.com/download/burger/6-2-burger-png-image.png')
  end

  it 'should have user id 1' do
    expect(group.user_id).to eq(1)
  end
end
