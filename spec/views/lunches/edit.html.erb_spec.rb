require 'spec_helper'

describe "lunches/edit" do
  before(:each) do
    @lunch = assign(:lunch, stub_model(Lunch,
      :proteins => "MyString",
      :vegetables => "MyString",
      :fruit => "MyString",
      :water => "MyString",
      :desert => "MyString"
    ))
  end

  it "renders the edit lunch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lunch_path(@lunch), "post" do
      assert_select "input#lunch_proteins[name=?]", "lunch[proteins]"
      assert_select "input#lunch_vegetables[name=?]", "lunch[vegetables]"
      assert_select "input#lunch_fruit[name=?]", "lunch[fruit]"
      assert_select "input#lunch_water[name=?]", "lunch[water]"
      assert_select "input#lunch_desert[name=?]", "lunch[desert]"
    end
  end
end
