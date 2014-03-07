module ApplicationHelper
  def get_correct_key_goddammit_responder_you_suck key
    if key == :notice
      :success
    elsif key == :alert
      :danger
    else
      key
    end
  end
end
