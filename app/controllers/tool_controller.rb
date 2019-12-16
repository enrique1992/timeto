class ToolController < ApplicationController
    before_action :require_user
    def home
        today = Date.today
        today = today.strftime("%d/%m/%y")
        # @tasks = Task.where("user_id = ? AND day = ?", current_user, today)
        user = User.find(session[:user_id])
        # tasks_today = user.tasks.select{|task| task.day == today && task.state != "DONE"}
        tasks_today = user.tasks.select{|task| task.day == today}
        @tasks = tasks_today
    end

    def done
        task = Task.find(params[:selected])
        time_task = params[:time]
        task.update_attributes!(:state => "DONE", :time => time_task)
    end

    private
        def tool_params
            params.permit(:selected)
        end
end