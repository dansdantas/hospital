require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
        :nome => "Nome",
        :cpf => "Cpf",
        :sexo => "Sexo",
        :email => "Email",
        :telefone => "Telefone",
        :data => "Data",
        :logradouro => "Logradouro"
      ),
      stub_model(Paciente,
        :nome => "Nome",
        :cpf => "Cpf",
        :sexo => "Sexo",
        :email => "Email",
        :telefone => "Telefone",
        :data => "Data",
        :logradouro => "Logradouro"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
  end
end
