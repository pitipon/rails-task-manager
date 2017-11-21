class TasksController < ApplicationController
  # GET: /tasks
  def index
    @tasks = Task.all
    @task = Task.new
  end

  # GET: /tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  # GET: /tasks/new
  def new

  end

  # POST: /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  # GET: /tasks/:id/edit
  def edit
    @task = Task.find(params[:id])

  end

  # PATCH: /tasks/:id
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
  end

  # DELETE: /restaurants/:id
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

  private


  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:todo, :deadline)
  end

end
