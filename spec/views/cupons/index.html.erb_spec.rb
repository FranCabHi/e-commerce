require 'rails_helper'

RSpec.describe "cupons/index", type: :view do
  before(:each) do
    assign(:cupons, [
      Cupon.create!(
        :kind => "Kind",
        :code => "Code",
        :amount => 2,
        :discount => "Discount",
        :count => 3,
        :user => nil
      ),
      Cupon.create!(
        :kind => "Kind",
        :code => "Code",
        :amount => 2,
        :discount => "Discount",
        :count => 3,
        :user => nil
      )
    ])
  end

  it "renders a list of cupons" do
    render
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Discount".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
