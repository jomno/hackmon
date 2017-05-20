class TeamJob < ActiveRecord::Base
  belongs_to :team
  belongs_to :job
  belongs_to :user
end
