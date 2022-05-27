require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.create(name: 'Microverse', icon: 'https://th.bing.com/th/id/R.72afb9506fcca05518616d8a76a2e573?rik=88%2bqP2POWjm3NQ&pid=ImgRaw&r=0') }

  it 'Title must not be blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon url must not be blank' do
    subject.icon = ''
    expect(subject).to_not be_valid
  end
end