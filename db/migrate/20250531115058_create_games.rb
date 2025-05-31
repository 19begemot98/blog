class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :developer
      t.string :genre
      t.string :platform
      t.date :release_date

      t.timestamps
    end
  end
end
