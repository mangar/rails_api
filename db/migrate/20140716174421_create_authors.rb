class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.boolean :flag_enabled

      t.timestamps
    end
  end
end
