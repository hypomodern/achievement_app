module Admin
  class PropUploadController < AdminController
    def handle_upload_success
      @prop = Prop.find params[:id]
      @prop.update_attribute :key, params[:key]
      redirect_to admin_prop_url(@prop)
    end
  end
end