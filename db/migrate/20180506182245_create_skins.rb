class CreateSkins < ActiveRecord::Migration[5.2]
  def change
    create_table :skins do |t|
      t.string :name
      t.string :by
      t.numeric :rp_cost
      t.string :method_of_purchase

      t.timestamps
    end
  end
end
