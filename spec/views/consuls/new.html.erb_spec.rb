require 'spec_helper'

describe "consuls/new" do
  before(:each) do
    assign(:consul, stub_model(Consul,
      :data => "MyString",
      :hora => "MyString",
      :paciente => nil,
      :medico => nil
    ).as_new_record)
  end

  it "renders new consul form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consuls_path, :method => "post" do
      assert_select "input#consul_data", :name => "consul[data]"
      assert_select "input#consul_hora", :name => "consul[hora]"
      assert_select "input#consul_paciente", :name => "consul[paciente]"
      assert_select "input#consul_medico", :name => "consul[medico]"
    end
  end
end
