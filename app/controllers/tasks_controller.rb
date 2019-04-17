class TasksController < ApplicationController
	before_action :load, only:[:show, :edit, :update, :destroy]
  
  def index
  	@tasks = Task.all
  end

  def show
  end

  def edit
  end

  def new
  	@task = Task.new()
  end

  def create
    @task = Task.new(user_params)
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to tasks_path
  end

  def update
    @task.update(user_params)

    redirect_to tasks_path
  end

  def destroy
  	@task.destroy

  	redirect_to tasks_path
  end

  private
  def user_params
    params.require(:task).permit(:title, :details)
  end

  def load
  	@task = Task.find(params[:id])
  end
end
