class DeleteSleepFromCats < ActiveRecord::Migration[6.0]
  def change
    remove_column :cats, :sleepy, :integer
  end
end
