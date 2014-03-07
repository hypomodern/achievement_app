class AchievementBuilder < Builder

  def new_instance
    Achievement.new
  end

  def set_attributes
    self.object.attributes = {
      name:                 params[:name],
      censored_description: params[:censored_description],
      full_description:     params[:full_description],
      secret:               params[:secret],
      won_at:               params[:won_at],
      won_by:               params[:won_by],
      chapter_id:           params[:chapter]
    }
  end

end
