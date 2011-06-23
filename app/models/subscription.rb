class Subscription < ActiveRecord::Base
  has_one :user

  def can_send_message?
    if user.sent_messages.count < limit
      puts "#{user.sent_messages.count} and #{limit}"
      true
    else
      false
    end
  end

end

