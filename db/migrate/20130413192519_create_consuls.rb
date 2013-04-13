class CreateConsuls < ActiveRecord::Migration
  def change
    create_table :consuls do |t|
      t.string :data
      t.string :hora
      t.references :paciente
      t.references :medico

      t.timestamps
    end
    add_index :consuls, :paciente_id
    add_index :consuls, :medico_id
  end
end
