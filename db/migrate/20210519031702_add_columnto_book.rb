class AddColumntoBook < ActiveRecord::Migration[5.2]
  def change
        add_column :books, :status, :integer, default: 0
  end
end
