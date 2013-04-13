class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :sexo
      t.string :email
      t.string :telefone
      t.string :data
      t.string :logradouro

      t.timestamps
    end
  end
end
