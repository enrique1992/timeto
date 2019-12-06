class ToolController < ApplicationController
    def home
        @tasks = Task.where("user_id = ?", current_user)
    end
end