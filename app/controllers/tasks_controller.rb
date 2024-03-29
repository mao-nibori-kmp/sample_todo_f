class TasksController < ApplicationController
    def index
        @tasks = Task.all
        @task = Task.new
    end

    def create
        @task = Task.create(task_params)
        redirect_to tasks_path
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end

    private
        def task_params
            params.require(:task).permit(:title, :status, :limitDay)
        end
end
