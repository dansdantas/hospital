class Paciente < ActiveRecord::Base
  attr_accessible :cpf, :data, :email, :logradouro, :nome, :sexo, :telefone
end
