class AddUserToGamesNullableAndBackfill < ActiveRecord::Migration[7.0]
  def up
    add_reference :games, :user, foreign_key: true, null: true

    # Backfill existing games with the first user if exists
    user_id = User.first&.id
    if user_id
      Game.update_all(user_id: user_id)
    end

    # Change column to NOT NULL if backfill was done
    change_column_null :games, :user_id, false
  end

  def down
    remove_reference :games, :user, foreign_key: true
  end
end
