module ApplicationHelper
  def get_correct_key_goddammit_responder_you_suck key
    if key.to_s == 'notice'
      :success
    elsif key.to_s == 'alert'
      :danger
    else
      key
    end
  end
end
