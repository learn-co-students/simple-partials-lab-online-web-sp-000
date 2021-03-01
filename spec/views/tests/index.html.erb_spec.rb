require 'rails_helper'

RSpec.describe "tests/index", type: :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        var: "Var"
      ),
      Test.create!(
        var: "Var"
      )
    ])
  end

  it "renders a list of tests" do
    render
    assert_select "tr>td", text: "Var".to_s, count: 2
  end
end
