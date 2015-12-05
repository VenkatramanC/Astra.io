class ChaptersController < ApplicationController
  before_filter :fetch_course

  def index
     @chapters = @course.chapters.all
  end

  def new 
    @chapter = Chapter.new
  end

  def create
    @chapter = @course.chapters.new(chapter_params)
    if @chapter.save
      redirect_to course_chapters_path(@course)
    else
      render new
    end
  end

 private 
  def chapter_params
   params.require(:chapter).permit(:name)
  end
  
  def fetch_course
    @course = Course.find(params[:course_id])
  end
end


