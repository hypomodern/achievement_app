module Admin
  class PropUploadController < AdminController
    def handle_upload_success
      @prop = Prop.find params[:id]
      @prop.update_attribute :key, params[:key]
      redirect_to admin_chapter_url(@prop.chapter_id)
    end
  end
end