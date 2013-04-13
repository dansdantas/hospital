# coding: utf-8

require 'spec_helper'

feature 'gerenciar paciente' do

  scenario 'incluir paciente' do # , :js => true  do
    visit new_paciente_path
    preencher_e_verificar_paciente
  end

  scenario 'alterar paciente' do #, :js => true  do
    paciente = FactoryGirl.create(:paciente)
    visit edit_paciente_path(paciente)
    preencher_e_verificar_paciente
  end

  scenario 'excluir paciente' do #, :javascript => true  do
    paciente = FactoryGirl.create(:paciente)
    visit pacientes_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_paciente
    fill_in 'Nome', :with => "Daniel"
    fill_in 'Cpf', :with => "123456"
    fill_in 'Sexo', :with => "Masculino"
    fill_in 'Telefone', :with => "99580154"
    fill_in 'Email', :with => "dansdantas@gmail.com"
    fill_in 'Data', :with => "20/01/1992"
    fill_in 'Logradouro', :with => "Rua A"
 
    click_button 'Salvar'

    page.should have_content 'Nome: Daniel'
    page.should have_content 'Cpf: 123456'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Telefone: 99580154'
    page.should have_content 'Email: dansdantas@gmail.com'
    page.should have_content 'Data: 20/01/1992'
    page.should have_content 'Logradouro: Rua A'
  end

end
