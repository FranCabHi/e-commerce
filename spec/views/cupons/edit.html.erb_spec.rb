require 'rails_helper'

RSpec.describe "cupons/edit", type: :view do
  before(:each) do
    @cupon = assign(:cupon, Cupon.create!(
      :kind => "MyString",
      :code => "MyString",
      :amount => 1,
      :discount => "MyString",
      :count => 1,
      :user => nil
    ))
  end

  it "renders the edit cupon form" do
    render

    assert_select "form[action=?][method=?]", cupon_path(@cupon), "post" do

      assert_select "input[name=?]", "cupon[kind]"

      assert_select "input[name=?]", "cupon[code]"

      assert_select "input[name=?]", "cupon[amount]"

      assert_select "input[name=?]", "cupon[discount]"

      assert_select "input[name=?]", "cupon[count]"

      assert_select "input[name=?]", "cupon[user_id]"
    end
  end
end
