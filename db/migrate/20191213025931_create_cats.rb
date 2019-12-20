class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :happy
      t.integer :hangry
      t.integer :thirsty
      t.integer :sleepy

      t.timestamps
    end
  end
end
