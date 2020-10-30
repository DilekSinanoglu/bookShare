class AddShareableToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :shareable, :boolean
  end
end
