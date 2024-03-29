require 'spec_helper'

describe "medicos/edit" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "MyString",
      :crm => "MyString",
      :telefone => "MyString",
      :logradouro => "MyString",
      :especialidade => nil
    ))
  end

  it "renders the edit medico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medicos_path(@medico), :method => "post" do
      assert_select "input#medico_nome", :name => "medico[nome]"
      assert_select "input#medico_crm", :name => "medico[crm]"
      assert_select "input#medico_telefone", :name => "medico[telefone]"
      assert_select "input#medico_logradouro", :name => "medico[logradouro]"
      assert_select "input#medico_especialidade", :name => "medico[especialidade]"
    end
  end
end
