class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
