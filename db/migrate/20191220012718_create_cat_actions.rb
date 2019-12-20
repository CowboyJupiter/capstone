class CreateCatActions < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_actions do |t|
      t.string :name
      t.string :result
      t.integer :happiness
      t.integer :hunger
      t.integer :thirst
      t.integer :tired

      t.timestamps
    end
  end
end
