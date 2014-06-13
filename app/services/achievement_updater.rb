class AchievementUpdater

  def self.update achievement, attributes
    mark_as_won = attributes.delete(:is_won).to_i
    if mark_as_won == 1 && achievement.won_at.nil?
      attributes[:won_at] = Time.now
    elsif mark_as_won == 0
      attributes[:won_at] = nil
      attributes[:won_by] = nil
    end

    achievement.won_at  = attributes[:won_at]
    achievement.won_by  = attributes[:won_by]
    achievement.save
  end

end