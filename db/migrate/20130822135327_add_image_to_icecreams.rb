class AddImageToIcecreams < ActiveRecord::Migration
  def change
    add_column :icecreams, :image, :string
  end
end
