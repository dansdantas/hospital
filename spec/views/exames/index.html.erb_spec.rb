require 'spec_helper'

describe "exames/index" do
  before(:each) do
    assign(:exames, [
      stub_model(Exame,
        :data => "Data",
        :entrega => "Entrega",
        :consul => nil
      ),
      stub_model(Exame,
        :data => "Data",
        :entrega => "Entrega",
        :consul => nil
      )
    ])
  end

  it "renders a list of exames" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Entrega".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
