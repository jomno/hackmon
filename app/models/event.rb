class Event < ActiveRecord::Base
    serialize :reward, Array
    before_save :default_reward
    
    def default_reward
        self.reward.push "참여 포지션 레벨업!"
    end
end
