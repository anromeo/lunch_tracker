require 'spec_helper'

describe "lunches/new" do
  before(:each) do
    assign(:lunch, stub_model(Lunch,
      :proteins => "MyString",
      :vegetables => "MyString",
      :fruit => "MyString",
      :water => "MyString",
      :desert => "MyString"
    ).as_new_record)
  end

  it "renders new lunch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lunches_path, "post" do
      assert_select "input#lunch_proteins[name=?]", "lunch[proteins]"
      assert_select "input#lunch_vegetables[name=?]", "lunch[vegetables]"
      assert_select "input#lunch_fruit[name=?]", "lunch[fruit]"
      assert_select "input#lunch_water[name=?]", "lunch[water]"
      assert_select "input#lunch_desert[name=?]", "lunch[desert]"
    end
  end
end
