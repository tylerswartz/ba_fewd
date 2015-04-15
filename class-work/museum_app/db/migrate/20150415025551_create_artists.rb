class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :hometown
      t.string :birth

      t.timestamps null: false
    end
  end
end
