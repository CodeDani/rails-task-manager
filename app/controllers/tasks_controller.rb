class TasksController < ApplicationController

  # create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to index_path
  end

  # read
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  # update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to index_path
  end

  # delete
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
