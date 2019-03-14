class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.all
  end

  def activate
    @student = Student.find(params[:id])
    @student.change_active_status
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
