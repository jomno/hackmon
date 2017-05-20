class CreateUserJobs < ActiveRecord::Migration
  def change
    create_table :user_jobs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
      t.integer :level

      t.timestamps null: false
    end
  end
end
