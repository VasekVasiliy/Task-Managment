# app/controllers/tasks_controller.rb
class TasksController < ApplicationController
  before_action :set_project, only: [:new, :create, :show, :update_status]

  def show
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    # Other code...
  end

  def new
    @task = @project.tasks.build
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build(task_params)

    if @task.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def update_status
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to project_task_path(@project, @task)
    else
      render :show
    end
  end

  private

  def set_project
    @task = Task.find(params[:id])
    @project = @task.project
  end

  def task_params
    params.require(:task).permit(:name, :description, :status, :deadline)
  end
end