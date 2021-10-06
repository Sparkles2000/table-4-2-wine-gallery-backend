class CreateArtpieces < ActiveRecord::Migration[6.1]
  def change
    create_table :artpieces do |t|
      t.string :artists
      t.string :piece
      t.string :artstyle
      t.string :img_src
      t.references :artsession, null: false, foreign_key: true

      t.timestamps
    end
  end
end
