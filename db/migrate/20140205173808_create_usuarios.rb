class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email, limit: 75, :null => false
      t.column :senha, "char(32)", :null => false

      t.timestamps
    end
  end
end
