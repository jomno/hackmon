class CreateTeamJobs < ActiveRecord::Migration
  def change
    create_table :team_jobs do |t|
      t.references :team, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :leader

      t.timestamps null: false
    end
  end
end
