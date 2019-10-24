class RemoveDogIdFromStroll < ActiveRecord::Migration[5.2]
  def change
    remove_column :strolls, :dog_id
  end
end
