class AddChampionRefToSkins < ActiveRecord::Migration[5.2]
  def change
    add_reference :skins, :champions, foreign_key: true
  end
end
