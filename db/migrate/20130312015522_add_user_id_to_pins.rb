class AddUserIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :user_id, :string
    add_column :pins, :interger, :string
    add_index :pins, :interger
  end
end
