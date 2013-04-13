require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "Nome",
      :cpf => "Cpf",
      :sexo => "Sexo",
      :email => "Email",
      :telefone => "Telefone",
      :data => "Data",
      :logradouro => "Logradouro"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Sexo/)
    rendered.should match(/Email/)
    rendered.should match(/Telefone/)
    rendered.should match(/Data/)
    rendered.should match(/Logradouro/)
  end
end
