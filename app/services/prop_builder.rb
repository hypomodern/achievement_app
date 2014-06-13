class PropBuilder < SimpleBuilder

  def new_instance
    Prop.new
  end

  def set_attributes
    self.object.attributes = {
      name:                 params[:name],
      description:          params[:description],
      current_owner:        params[:current_owner],
      found_by:             params[:found_by],
      found:                !params[:found_by].blank?,
      chapter_id:           params[:chapter_id]
    }
  end

end
