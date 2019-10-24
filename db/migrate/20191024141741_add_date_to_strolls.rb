class AddDateToStrolls < ActiveRecord::Migration[5.2]
  def change
    add_column :strolls, :date, :datetime
  end
end
