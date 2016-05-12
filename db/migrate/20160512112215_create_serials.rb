class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :tytul
      t.string :rezyser
      t.text :opis
      t.string :pochodznie

      t.timestamps null: false
    end
  end
end
