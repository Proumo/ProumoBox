class CreateCampanhas < ActiveRecord::Migration
  def change
    create_table :campanhas do |t|
      t.integer :anunciante_id, null: false
      t.string :nome, limit: 45, null: false
      t.boolean :sandbox, default: true, null: false

      t.timestamps
    end
  end
end
