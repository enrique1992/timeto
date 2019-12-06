class ToolController < ApplicationController
    def home
        today = Date.today
        today = today.strftime("%d/%m/%y")
        # @tasks = Task.where("user_id = ? AND day = ?", current_user, today)
        user = User.find(session[:user_id])
        tasks_today = user.tasks.select{|task| task.day == today}
        @tasks = tasks_today
    end
end