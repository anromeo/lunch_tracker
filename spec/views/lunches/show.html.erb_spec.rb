require 'spec_helper'

describe "lunches/show" do
  before(:each) do
    @lunch = assign(:lunch, stub_model(Lunch,
      :proteins => "Proteins",
      :vegetables => "Vegetables",
      :fruit => "Fruit",
      :water => "Water",
      :desert => "Desert"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Proteins/)
    rendered.should match(/Vegetables/)
    rendered.should match(/Fruit/)
    rendered.should match(/Water/)
    rendered.should match(/Desert/)
  end
end
