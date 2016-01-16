class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
    # render('tasks/index.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def create
    @task = Task.create(:description => params[:description])
    if @task.save
      flash[:success] = "Post successfully created"
      render :index
    else
      flash[:errors] = "Post successfully created"
      redirect_to :edit
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

 def update
    @task = Task.find(params[:id])
    if @task.update(:description => params[:description],
                    :done => params[:done])
      render :index
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

end
