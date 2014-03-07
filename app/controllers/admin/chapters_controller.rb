module Admin
  class ChaptersController < AdminController

    def index
      @chapters = Chapter.all
    end

    def new
      @chapter = Chapter.new
    end

    def create
      @chapter = ChapterBuilder.build params[:chapter]
      respond_with :admin, @chapter
    end

    def show
      @chapter = Chapter.find params[:id]
    end

    def edit
      @chapter = Chapter.find params[:id]
    end

    def update
      @chapter = Chapter.find params[:id]
      @chapter = ChapterBuilder.update @chapter, params[:chapter]
      respond_with :admin, @chapter
    end

    def destroy
      @chapter = Chapter.find params[:id]
      @chapter.destroy
      redirect_to admin_path
    end

  end
end