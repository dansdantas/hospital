# coding: utf-8

require 'spec_helper'

feature 'gerenciar exame' do

  scenario 'incluir exame' do # , :js => true  do
    consul = FactoryGirl.create(:consul, :hora => "10 Horas")
    visit new_exame_path
    preencher_e_verificar_exame
  end

  scenario 'alterar exame' do #, :js => true  do
    consul = FactoryGirl.create(:consul, :hora => "10 Horas")
    exame = FactoryGirl.create(:exame, :consul => consul)
    visit edit_exame_path(exame)
    preencher_e_verificar_exame
  end

  scenario 'excluir exame' do #, :javascript => true  do
    consul = FactoryGirl.create(:consul, :hora => "10 Horas")
    exame = FactoryGirl.create(:exame, :consul => consul)
    visit exames_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_exame
    fill_in 'Data',  :with => "20/01/2013"
    fill_in 'Entrega', :with => "27/01/2013"

    select '10 Horas', :on => 'Consul'
 
    click_button 'Salvar'

    page.should have_content 'Data: 20/01/2013'
    page.should have_content 'Entrega: 27/01/2013'
    page.should have_content 'Consul: 10 Horas'
  end

end
