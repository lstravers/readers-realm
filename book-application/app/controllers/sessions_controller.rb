def new
end

def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    # login
    session[:user_id] = user.id
    redirect_to root_path
  else
    flash[:error_message] = "Error: Please try again!"
    redirect_to new_session_path
  end
end

def destroy #destroys the session/removes the user ID
  session[:user_id] = nil
  flash[:notice] = "You have been logged out."
  redirect_to root_path
end

end