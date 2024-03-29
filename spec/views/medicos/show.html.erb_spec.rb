require 'spec_helper'

describe "medicos/show" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "Nome",
      :crm => "Crm",
      :telefone => "Telefone",
      :logradouro => "Logradouro",
      :especialidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Crm/)
    rendered.should match(/Telefone/)
    rendered.should match(/Logradouro/)
    rendered.should match(//)
  end
end
