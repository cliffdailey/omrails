class AddVideoToPins < ActiveRecord::Migration
  def change
    add_column :pins, :yvideo, :string
  end
end
