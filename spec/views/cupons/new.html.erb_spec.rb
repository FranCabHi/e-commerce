require 'rails_helper'

RSpec.describe "cupons/new", type: :view do
  before(:each) do
    assign(:cupon, Cupon.new(
      :kind => "MyString",
      :code => "MyString",
      :amount => 1,
      :discount => "MyString",
      :count => 1,
      :user => nil
    ))
  end

  it "renders new cupon form" do
    render

    assert_select "form[action=?][method=?]", cupons_path, "post" do

      assert_select "input[name=?]", "cupon[kind]"

      assert_select "input[name=?]", "cupon[code]"

      assert_select "input[name=?]", "cupon[amount]"

      assert_select "input[name=?]", "cupon[discount]"

      assert_select "input[name=?]", "cupon[count]"

      assert_select "input[name=?]", "cupon[user_id]"
    end
  end
end
