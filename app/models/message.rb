class Message < ActiveRecord::Base
  belongs_to :user, foreign_key: "sender_id"

end
