class Consul < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :medico
  attr_accessible :data, :hora, :paciente_id, :medico_id
end
