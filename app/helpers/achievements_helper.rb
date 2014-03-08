module AchievementsHelper

  def public_description_for_achievement achievement
    if achievement.won_at
      achievement.full_description
    elsif achievement.secret?
      "[ A SECRET MAN WAS NOT MEANT TO KNOW ]"
    elsif achievement.censored_description.blank?
      achievement.full_description
    else
      achievement.censored_description
    end
  end

end