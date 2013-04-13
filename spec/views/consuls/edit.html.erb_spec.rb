require 'spec_helper'

describe "consuls/edit" do
  before(:each) do
    @consul = assign(:consul, stub_model(Consul,
      :data => "MyString",
      :hora => "MyString",
      :paciente => nil,
      :medico => nil
    ))
  end

  it "renders the edit consul form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consuls_path(@consul), :method => "post" do
      assert_select "input#consul_data", :name => "consul[data]"
      assert_select "input#consul_hora", :name => "consul[hora]"
      assert_select "input#consul_paciente", :name => "consul[paciente]"
      assert_select "input#consul_medico", :name => "consul[medico]"
    end
  end
end
