class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def main_job
    strong = 0
    strong_id = UserJob.find_by(user_id: self.id).id
    UserJob.where(user_id: self.id).each do |u|
      if strong<u.level
        strong=u.level
        strong_id=u.id
      end
    end
    return UserJob.find(strong_id)
  end
end
