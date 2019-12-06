class ToolController < ApplicationController
    def home
        today = Date.today
        today = today.strftime("%d/%m/%y")
        # @tasks = Task.where("user_id = ? AND day = ?", current_user, today)
        user = User.find(session[:user_id])
        tasks_today = user.tasks.select{|task| task.day == today && task.state != "DONE"}
        @tasks = tasks_today
    end

    def done        
        task = Task.find(params[:selected])
        task.update_attributes!(:state => "DONE")
    end

    private
        def tool_params
            params.permit(:selected)
        end
end