class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = Task.create({:name => params[:name], :done => false, :list_id => params[:list_id]})
    @tasks = @list.tasks
    if @task.save
      redirect_to("/lists/#{@list.id}")
    else
      render("/lists/show.html.erb")
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    @task.update({:name => params[:name], :done => params[:done]})
    redirect_to("/lists/#{@task.list.id}")
  end

  def destroy
    @task = Task.destroy(params[:id])
    @tasks = Task.all
    redirect_to("/lists/#{@task.list.id}")
  end

end

