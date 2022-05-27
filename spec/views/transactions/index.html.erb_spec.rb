require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        name: "Money Transfer",
        amount: "200.00",
        user: 'Anny',
        category: 'Microverse'
      ),
      Transaction.create!(
        name: "Contribution",
        amount: "400.00",
        user: 'Anny',
        category: 'Microverse'
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", text: "Money Transfers".to_s, count: 2
    assert_select "tr>td", text: "Contribution".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
