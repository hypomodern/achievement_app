class ChapterBuilder < SimpleBuilder

  def new_instance
    Chapter.new
  end

  def set_attributes
    self.object.attributes = {
      name: params[:name],
    }
  end

end