class ListsController < ApplicationController
  def create
    @list = List.create(:name => params[:name])
    render('lists/index.html.erb')
  end
  def index
    render('lists/index.html.erb')
  end

  def show
    @task = Task.new
    @list = List.find(params[:id])
    @tasks = @list.tasks
    render('lists/show.html.erb')
  end

  def destroy
    List.destroy(params[:id])
    @lists = List.all
    render('lists/index.html.erb')
  end

end
