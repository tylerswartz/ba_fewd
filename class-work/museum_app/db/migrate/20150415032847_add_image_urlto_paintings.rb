class AddImageUrltoPaintings < ActiveRecord::Migration
  def change
  	add_column :paintings, :image_url, :string
  end
end
