# coding: utf-8

require 'spec_helper'

feature 'gerenciar medico' do

  scenario 'incluir medico' do # , :js => true  do
    especialidade = FactoryGirl.create(:especialidade, :descricao => "Neurologia")
    visit new_medico_path
    preencher_e_verificar_medico
  end

  scenario 'alterar medico' do #, :js => true  do
    especialidade = FactoryGirl.create(:especialidade, :descricao => "Neurologia")
    medico = FactoryGirl.create(:medico, :especialidade => especialidade)
    visit edit_medico_path(medico)
    preencher_e_verificar_medico
  end

  scenario 'excluir medico' do #, :javascript => true  do
    especialidade = FactoryGirl.create(:especialidade, :descricao => "Neurologia")
    medico = FactoryGirl.create(:medico, :especialidade => especialidade)
    visit medicos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_medico
    fill_in 'Nome',  :with => "Daniel Dantas"
    fill_in 'Crm', :with => "123456"
    fill_in 'Telefone', :with => "27324664"
    fill_in 'Logradouro', :with => "Rua dos Bobos"

    select 'Neurologia', :on => 'Especialidade'
 
    click_button 'Salvar'

    page.should have_content 'Nome: Daniel Dantas'
    page.should have_content 'Crm: 123456'
    page.should have_content 'Telefone: 27324664'
    page.should have_content 'Logradouro: Rua dos Bobos'
    page.should have_content 'Especialidade: Neurologia'
  end

end
