class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :advertises
  has_many :sent_messages, class: Message, foreign_key: "sender_id"
  has_many :received_messages, class: Message, foreign_key: "receiver_id"

  def unread_messages?
    received_messages.where(readed: false)
  end

end
