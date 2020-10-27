class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    render 'form'
  end


  def create
    Student.create(first_name:params[:student][:first_name],last_name:params[:student][:last_name])
    redirect_to students_path
  end

  private
   def set_student
    @student = Student.find(params[:id])
   end
end
