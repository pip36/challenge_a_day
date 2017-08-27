class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :challenge
  has_many :statuses
  has_many :challenges, through: :statuses
  has_many :completed_challenges, -> {where(statuses:{passed:true})}, through: :statuses, source: :challenge
  has_many :failed_challenges, -> {where(statuses:{passed:false})}, through: :statuses, source: :challenge

  def self.set_challenge
  #go through each user
  #pick a random challenge
  #assign it to the user
    @users = User.all
    @users.each do |user|

      @random_challenge = Challenge.limit(1).order("RANDOM()")
      user.update_attribute(:challenge_id, @random_challenge.first.id)

    end

  end

  def has_completed_challenge?(id)
    return false if self.statuses.where(challenge_id: id).empty?
    true
  end

end
