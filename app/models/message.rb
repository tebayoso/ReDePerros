class Message < ActiveRecord::Base
  belongs_to :user, foreign_key: "sender_id"
  before_create :set_unreaded

  private

  def set_unreaded
    readed = false
  end

end
