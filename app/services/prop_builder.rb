class PropBuilder < SimpleBuilder

  def new_instance
    Prop.new
  end

  def set_attributes
    self.object.attributes = {
      name:                 params[:name],
      description:          params[:description],
      found:                params[:found],
      chapter_id:           params[:chapter_id]
    }
  end

end
