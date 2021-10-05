class CreateBrandofwines < ActiveRecord::Migration[6.1]
  def change
    create_table :brandofwines do |t|
      t.string :brand
      t.integer :age
      t.string :winetype
      t.string :price
      t.string :drysweet
      t.string :alcoholcontent
      t.string :img_src

      t.timestamps
    end
  end
end
