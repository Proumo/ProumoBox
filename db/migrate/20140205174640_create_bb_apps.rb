class CreateBbApps < ActiveRecord::Migration
  def change
    create_table :bb_apps do |t|
      t.integer :desenvolvedor_id, null: false
      t.string :nome, limit: 45, null: false
      t.string :versao, limit: 25, null: false
      t.float :preco, null: false
      t.boolean :sandbox, default: true, null: false
      t.text :codigo_html, null: false
      t.text :codigo_css, null: false
      t.text :codigo_js, null: true

      t.timestamps
    end
  end
end
