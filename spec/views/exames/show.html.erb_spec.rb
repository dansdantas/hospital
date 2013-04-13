require 'spec_helper'

describe "exames/show" do
  before(:each) do
    @exame = assign(:exame, stub_model(Exame,
      :data => "Data",
      :entrega => "Entrega",
      :consul => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Entrega/)
    rendered.should match(//)
  end
end
