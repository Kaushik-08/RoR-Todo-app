class TodosController < ApplicationController
  def index
    @todo = Todo.all.map{|todo| todo}
  end

  def create
      new_todo = Todo.new({todo_task: params[:todo_task]})
      if new_todo.save
        redirect_to "/"
      else
        flash[:error] = "Fill your task"
        redirect_to "/"
      end
  end 

  def error
  end
  def todo_list
    render plain: Todo.order(:id).map{|todos| todos.to_pleasent_string}.join("\n")
  end

  # def todo_params
  #   params.require(:new_todo).permit(:todo_task)
  # end

  def update 
    @todo = Todo.find(params[:id])
    @todo.completed = true
    @todo.save
    redirect_to "/"
end

def delete 
  @todo = Todo.find(params[:id])
  if @todo.destroy
   redirect_to "/"
  end
end

  
end

 