class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :link
      t.text :reward
      t.date :s_date
      t.date :e_date

      t.timestamps null: false
    end
  end
end
