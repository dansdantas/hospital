require 'spec_helper'

describe "consuls/index" do
  before(:each) do
    assign(:consuls, [
      stub_model(Consul,
        :data => "Data",
        :hora => "Hora",
        :paciente => nil,
        :medico => nil
      ),
      stub_model(Consul,
        :data => "Data",
        :hora => "Hora",
        :paciente => nil,
        :medico => nil
      )
    ])
  end

  it "renders a list of consuls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
