class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :city
      t.string :pincode
      t.string :mobile

      t.timestamps
    end
  end
end
