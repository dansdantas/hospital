require 'spec_helper'

describe "exames/edit" do
  before(:each) do
    @exame = assign(:exame, stub_model(Exame,
      :data => "MyString",
      :entrega => "MyString",
      :consul => nil
    ))
  end

  it "renders the edit exame form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exames_path(@exame), :method => "post" do
      assert_select "input#exame_data", :name => "exame[data]"
      assert_select "input#exame_entrega", :name => "exame[entrega]"
      assert_select "input#exame_consul", :name => "exame[consul]"
    end
  end
end
