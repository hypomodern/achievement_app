module Admin
  class AchievementsController < AdminController

    def index
      @achievements = Achievement.all
    end

    def new
      @achievement = Achievement.new
    end

    def create
      # render text: params.inspect and return
      @achievement = AchievementBuilder.build params[:achievement]
      redirect_to admin_chapter_path(@achievement.chapter)
    end

    def show
      @achievement = Achievement.find params[:id]
    end

    def edit
      @achievement = Achievement.find params[:id]
    end

    def update
      # render text: params.inspect and return
      @achievement = Achievement.find params[:id]
      @achievement = AchievementBuilder.update @achievement, params[:achievement]
      respond_with :admin, @achievement
    end

    def control
      @achievement = Achievement.find params[:id]
      render layout: false
    end

    def patch
      @achievement = Achievement.find params[:id]
      AchievementUpdater.update @achievement, params[:achievement]
      redirect_to admin_chapter_path(@achievement.chapter)
    end

    def destroy
      @achievement = Achievement.find params[:id]
      @achievement.destroy
      redirect_to admin_path
    end

  end
end