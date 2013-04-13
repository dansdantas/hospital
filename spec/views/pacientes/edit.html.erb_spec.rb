require 'spec_helper'

describe "pacientes/edit" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :cpf => "MyString",
      :sexo => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :data => "MyString",
      :logradouro => "MyString"
    ))
  end

  it "renders the edit paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacientes_path(@paciente), :method => "post" do
      assert_select "input#paciente_nome", :name => "paciente[nome]"
      assert_select "input#paciente_cpf", :name => "paciente[cpf]"
      assert_select "input#paciente_sexo", :name => "paciente[sexo]"
      assert_select "input#paciente_email", :name => "paciente[email]"
      assert_select "input#paciente_telefone", :name => "paciente[telefone]"
      assert_select "input#paciente_data", :name => "paciente[data]"
      assert_select "input#paciente_logradouro", :name => "paciente[logradouro]"
    end
  end
end
