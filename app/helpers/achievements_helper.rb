module AchievementsHelper

  def public_description_for_achievement achievement
    won = achievement.won_at
    if won
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