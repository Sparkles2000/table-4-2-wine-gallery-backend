class CreateWinepurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :winepurchases do |t|
      t.references :customergroup, null: false, foreign_key: true
      t.references :brandofwine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
