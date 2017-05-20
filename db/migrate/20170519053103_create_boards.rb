class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :body

      t.timestamps null: false
    end
  end
end
