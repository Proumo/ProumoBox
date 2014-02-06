class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.integer :campanha_id, null: false
      t.integer :bbapp_id, null: false

      t.timestamps
    end
  end
end
