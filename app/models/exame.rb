class Exame < ActiveRecord::Base
  belongs_to :consul
  attr_accessible :data, :entrega, :consul_id
end
