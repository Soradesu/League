class AddChampionRefToSkins2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :skins, :champion, foreign_key: true
  end
end
