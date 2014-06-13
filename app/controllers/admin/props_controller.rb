module Admin
  class PropsController < AdminController

    def index
      @props = Prop.all
    end

    def new
      @prop = Prop.new
    end

    def create
      # render text: params[:prop].inspect and return
      @prop = PropBuilder.build params[:prop]
      redirect_to admin_chapter_path(@prop.chapter)
    end

    def show
      @prop = Prop.find params[:id]
      @uploader = @prop.attached_file
      @uploader.success_action_redirect = prop_upload_success_admin_prop_url(@prop)
    end

    def edit
      @prop = Prop.find params[:id]
    end

    def update
      # render text: params.inspect and return
      @prop = Prop.find params[:id]
      @prop = PropBuilder.update @prop, params[:prop]
      respond_with :admin, @prop
    end

    def destroy
      @prop = Prop.find params[:id]
      @prop.destroy
      redirect_to admin_path
    end

  end
end