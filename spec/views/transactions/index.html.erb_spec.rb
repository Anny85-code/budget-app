require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        name: "Name",
        amount: "",
        user: nil,
        category: nil
      ),
      Transaction.create!(
        name: "Name",
        amount: "",
        user: nil,
        category: nil
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
