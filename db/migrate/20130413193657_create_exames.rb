class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.string :data
      t.string :entrega
      t.references :consul

      t.timestamps
    end
    add_index :exames, :consul_id
  end
end
