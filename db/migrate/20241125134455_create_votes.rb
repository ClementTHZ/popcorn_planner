class CreateVotes < ActiveRecord::Migration[7.1]
  def change
    create_table :votes do |t|
      t.references :movie_event, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
