class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :role
      t.string :name
      t.string :war
      t.string :image

      t.timestamps
    end
  end
end
