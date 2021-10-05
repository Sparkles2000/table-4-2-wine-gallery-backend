class CreateArtsessions < ActiveRecord::Migration[6.1]
  def change
    create_table :artsessions do |t|
      t.string :artstyles
      t.string :prices
      t.string :sessiontype
      t.integer :piecespergroup
      t.references :customergroup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
