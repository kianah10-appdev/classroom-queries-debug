class DepartmentsController < ApplicationController
  def index
    matching_departments = Department.all

    @list_of_departments = matching_departments.order({ :created_at => :desc })

    render({ :template => "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    @matching_departments = Department.where({ :id => the_id }).at(0)

   # @the_department = Department.where({ :_id => @the_movie_one.id})

    render({ :template => "departments/show.html.erb" })
  end
end
