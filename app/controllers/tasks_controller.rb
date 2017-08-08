class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy, :change_status]

  def index
    @unplanned_tasks = Task.where(status: 0).order(:urgency)
    @planned_tasks = Task.where(status: 1).order(:planned_date)
    @done_tasks = Task.where(status: 2).order(:removed_date)
    @deleted_tasks = Task.where(status: 3).order(:removed_date)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def change_status
    @task.change_status!(params[:status])
    redirect_to tasks_path
  end

  def destroy
    @task.change_status!(:deleted)
    # @task.destroy
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:short_description,:long_description,:nature,:urgency,:duration,:attention_date,:deadline,:expiration_date,:planned_date,:starting_time,:removed_date,:status)
  end
end
