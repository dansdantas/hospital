require 'spec_helper'

describe "consuls/show" do
  before(:each) do
    @consul = assign(:consul, stub_model(Consul,
      :data => "Data",
      :hora => "Hora",
      :paciente => nil,
      :medico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
