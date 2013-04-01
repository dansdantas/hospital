class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :crm
      t.string :telefone
      t.string :logradouro
      t.references :especialidade

      t.timestamps
    end
    add_index :medicos, :especialidade_id
  end
end
