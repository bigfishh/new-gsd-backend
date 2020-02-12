class TodoTasksController < ApplicationController
    def index
        @todo_tasks = TodoTask.all
        # @todoObj = TodoTask.all
        render json: @todo_tasks
      end
    
      def show
        @todo_task = TodoTask.find(params[:id])
        render json: {todo_list: TodoTaskSerializer.new(@todo_task)}
      end
    
      def create
        @todo_task = TodoTask.create(todo_task_params)
      end
    
      private
      def todo_task_params
        params.permit(:todoDate, :title, :description, :completed, :category, :user)
      end
end
