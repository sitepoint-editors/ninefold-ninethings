class CreateNineThings < ActiveRecord::Migration
  def change
    create_table :nine_things do |t|
      t.string :name
      t.integer :nine_number

      t.timestamps
    end
  end
end
