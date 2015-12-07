class CoursesController < ApplicationController
  

  def new
    @course = Course.new
  end

  def create 
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @chapters = @course.chapters
    c = Conred::Video.new(
    video_url: "http://www.youtube.com/watch?v=tNtW9pGFPTA&feature=plcp", 
    width: 285, 
    height: 185,
    error_message: "Video url is invalid"
)
  end


    private 
    def course_params
      params.require(:course).permit(:title , :description)
    end
end
