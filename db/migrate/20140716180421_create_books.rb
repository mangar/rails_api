class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.string :publisher
      t.boolean :flag_available

      t.timestamps
    end
  end
end
