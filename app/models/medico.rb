class Medico < ActiveRecord::Base
  belongs_to :especialidade
  attr_accessible :crm, :logradouro, :nome, :telefone, :especialidade_id
end
