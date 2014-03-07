module AchievementsHelper

  def public_description_for_achievement achievement
    won = achievement.won_at
    if won
      achievement.full_description
    elsif achievement.secret?
      "It's a secret!"
    else
      achievement.censored_description || achievement.full_description
    end
  end

end