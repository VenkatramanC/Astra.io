class ChaptersController < ApplicationController
  before_filter :fetch_course

  def index
  end

  def new 
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to course_chapter_path
    else
      render new
    end
  end

private 
 def chapter_params
  params.require(:chapter).permit(:name)
end


