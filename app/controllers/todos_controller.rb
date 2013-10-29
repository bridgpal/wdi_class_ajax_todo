class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
    respond_to do |format|
      format.html
      format.json { render :json => @todos}
    end
  end

  def create
    @todo = Todo.create(params[:todo])
    # respond_to do |format|
    #   format.js
    # end
  end

  def destroy
    @todo = Todo.delete(params[:id])
    @id = params[:id]
    # respond_to do |format|
    #   format.js
    # end
  end

end
