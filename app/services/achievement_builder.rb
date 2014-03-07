class AchievementBuilder < Builder

  def new_instance
    Achievement.new
  end

  def set_attributes
    if params[:won_at].to_i == 1
      params[:won_at] = Time.now
    elsif params[:won_at].to_i == 0
      params[:won_at] = nil
    else
      params.delete(:won_at)
    end

    attrs = {
      name:                 params[:name],
      censored_description: params[:censored_description],
      full_description:     params[:full_description],
      secret:               params[:secret],
      won_by:               params[:won_by],
      chapter_id:           params[:chapter_id]
    }

    attrs.merge!(won_at: params[:won_at]) if params[:won_at]

    self.object.attributes = attrs
  end

end
