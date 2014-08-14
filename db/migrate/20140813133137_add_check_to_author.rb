class AddCheckToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :check, :integer
  end
end
