require 'spec_helper'

describe "lunches/index" do
  before(:each) do
    assign(:lunches, [
      stub_model(Lunch,
        :proteins => "Proteins",
        :vegetables => "Vegetables",
        :fruit => "Fruit",
        :water => "Water",
        :desert => "Desert"
      ),
      stub_model(Lunch,
        :proteins => "Proteins",
        :vegetables => "Vegetables",
        :fruit => "Fruit",
        :water => "Water",
        :desert => "Desert"
      )
    ])
  end

  it "renders a list of lunches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Proteins".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetables".to_s, :count => 2
    assert_select "tr>td", :text => "Fruit".to_s, :count => 2
    assert_select "tr>td", :text => "Water".to_s, :count => 2
    assert_select "tr>td", :text => "Desert".to_s, :count => 2
  end
end
