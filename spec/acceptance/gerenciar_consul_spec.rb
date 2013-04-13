# coding: utf-8

require 'spec_helper'

feature 'gerenciar consul' do

  scenario 'incluir consul' do # , :js => true  do
    medico = FactoryGirl.create(:medico, :nome => "Daniel")
    paciente = FactoryGirl.create(:paciente, :nome => "Dantas")
    visit new_consul_path
    preencher_e_verificar_consul
  end

  scenario 'alterar consul' do #, :js => true  do
    medico = FactoryGirl.create(:medico, :nome => "Daniel")
    paciente = FactoryGirl.create(:paciente, :nome => "Dantas")
    consul = FactoryGirl.create(:consul, :medico => medico, :paciente => paciente)
    visit edit_consul_path(consul)
    preencher_e_verificar_consul
  end

  scenario 'excluir consul' do #, :javascript => true  do
    medico = FactoryGirl.create(:medico, :nome => "Daniel")
    paciente = FactoryGirl.create(:paciente, :nome => "Dantas")
    consul = FactoryGirl.create(:consul, :medico => medico, :paciente => paciente)
    visit consuls_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_consul
    fill_in 'Hora',  :with => "07 Horas"
    fill_in 'Data', :with => "20/01/2013"

    select 'Daniel', :on => 'Medico'
    select 'Dantas', :on => 'Dantas'
 
    click_button 'Salvar'

    page.should have_content 'Hora: 07 Horas'
    page.should have_content 'Data: 20/01/2013'
    page.should have_content 'Medico: Daniel'
    page.should have_content 'Paciente: Dantas'
  end

end
