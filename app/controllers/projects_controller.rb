class ProjectsController < ApplicationController

  before_action :set_project, only: [:edit, :update, :show, :destroy]


  def new
    @project = Project.new
    #authorize @project
  end

  def create
    @project = Project.new(project_params)
    #authorize @project

    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project.destroy
  end



  private

  def project_params
    params.require(:project).permit(:name, :activity, :type, :location, :size, :promoter, :architect, :manager,
      :start_date, :end_date, :title, :body, :photo)
  end

  def set_project
    @project = Project.find(params[:id])
    #authorize @project
  end
end
