class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        respond_to do |format|
            if user && user.authenticate(params[:session][:password])            
                session[:user_id] = user.id           
                # redirect_to user_path(user)
                # format.html { redirect_to user_path(user), notice: 'Login Success!' }
                format.html { redirect_to root_path, notice: 'Login Success!' }         
            else           
                # render 'new'
                format.html { render 'new', notice: 'Login NOT success!' }
            end
        end
        
    end

    def destroy
        session[:user_id] = nil
        # redirect_to root_path
        respond_to do |format|
            format.html { redirect_to root_path, notice: 'Logout!' }
        end
        
    end
    

end