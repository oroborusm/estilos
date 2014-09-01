class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :descripcion
      t.string :foto
      t.integer :fotito_id

      t.timestamps
    end
  end
end
