class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.oldest_student
    @classroom=@student.classroom
  end

  def index
    @classrooms = Classroom.all
  end
end
