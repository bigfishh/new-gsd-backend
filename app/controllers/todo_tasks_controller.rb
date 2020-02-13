class TodoTasksController < ApplicationController
    # before_action :authorized, only: [:index, :show]

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
        byebug
        @todo_task = TodoTask.create(todo_task_params)
        render json: @todo_task
      end
    
      private
      def todo_task_params
        params.permit(:todoDate, :title, :description, :completed, :category_id, :user_id)
      end
end
