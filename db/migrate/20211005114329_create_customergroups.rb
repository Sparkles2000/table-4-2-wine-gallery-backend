class CreateCustomergroups < ActiveRecord::Migration[6.1]
  def change
    create_table :customergroups do |t|
      t.string :party
      t.integer :partyquantity
      t.string :customerstatus

      t.timestamps
    end
  end
end
