class UsersController < ApplicationController

 def index
   if user_signed_in? && current_user.role == "sales_host"

        redirect_to(:controller => 'users',:action => 'sales_host')

      elsif user_signed_in? && current_user.role == "client_user"

          redirect_to(:controller => 'users',:action => 'client_user')

        else
          redirect_to(:controller => 'welcomes',:action => 'index')
    end
 end
 
def client_user

end

def sales_host

end

def after_sign_in_path_for(resource)

   redirect_to :user_edit_path
  
end



def create
  
  if user.save!
      
        if current_user.role?(:sales_host)
       
           redirect_to(:controller => 'users',:action => 'sales_host')
        
           elsif  current_user.role=="client_user"
          
            redirect_to(:controller => 'users',:action => 'client_user')
        
        end
    end
end

end
