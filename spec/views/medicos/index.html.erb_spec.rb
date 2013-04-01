require 'spec_helper'

describe "medicos/index" do
  before(:each) do
    assign(:medicos, [
      stub_model(Medico,
        :nome => "Nome",
        :crm => "Crm",
        :telefone => "Telefone",
        :logradouro => "Logradouro",
        :especialidade => nil
      ),
      stub_model(Medico,
        :nome => "Nome",
        :crm => "Crm",
        :telefone => "Telefone",
        :logradouro => "Logradouro",
        :especialidade => nil
      )
    ])
  end

  it "renders a list of medicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Crm".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
