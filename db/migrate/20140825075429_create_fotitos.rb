class CreateFotitos < ActiveRecord::Migration
  def change
    create_table :fotitos do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
  end
end
