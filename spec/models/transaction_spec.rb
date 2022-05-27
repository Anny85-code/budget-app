require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject { Transaction.create(name: 'fuel', amount: 4000, author_id: 1, category_id: 1) }

  it 'Name must not be blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount must not be blank' do
    subject.amount = ''
    expect(subject).to_not be_valid
  end
end
