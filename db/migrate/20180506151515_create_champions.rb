class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.boolean :owned
      t.numeric :rp_cost
      t.numeric :be_cost

      t.timestamps
    end
  end
end
