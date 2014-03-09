class AchievementBuilder < SimpleBuilder

  def new_instance
    Achievement.new
  end

  def set_attributes
    mark_as_won = params.delete(:is_won).to_i
    if mark_as_won == 1 && self.object.won_at.nil?
      params[:won_at] = Time.now
    elsif mark_as_won == 0
      params[:won_at] = nil
      params[:won_by] = nil
    end

    attrs = {
      name:                 params[:name],
      censored_description: params[:censored_description],
      full_description:     params[:full_description],
      secret:               params[:secret],
      won_by:               params[:won_by],
      chapter_id:           params[:chapter_id]
    }

    attrs.merge!(won_at: params[:won_at]) if params.has_key?(:won_at)

    self.object.attributes = attrs
  end

end
