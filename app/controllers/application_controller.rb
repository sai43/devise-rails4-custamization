class ApplicationController < ActionController::Base
  after_filter :reset_last_captcha_code!

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  private

    def configure_devise_permitted_parameters
      registration_params = [:confirmable,:role, :security_question_1_ans,
                             :security_question_2_ans, :firstname, :lastname, 
                             :email, :company_url ,:reset_password_token,
                             :remember_me,:password,:password_confirmation,
                             :security_question1,:security_question2] 
      
                if params[:action] == 'update'
                  devise_parameter_sanitizer.for(:account_update) { 
                    |u| u.permit(registration_params << :current_password )
                   
                  }
                   else params[:action] == 'create'
                    devise_parameter_sanitizer.for(:sign_up) { 
                    |u| u.permit(registration_params) 
                     
                  }
                end
    end

end
