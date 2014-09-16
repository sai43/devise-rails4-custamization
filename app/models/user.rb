class User < ActiveRecord::Base

 
 attr_accessible :confirmable,:role, :security_question1,:security_question2, :security_question_1_ans,:security_question_2_ans, 
               :firstname, :lastname, :email, :company_url ,:remember_me,
                 :reset_password_token, :password,:password_confirmation




 devise :confirmable,:database_authenticatable, :registerable,   
         :recoverable, :rememberable, :trackable, :validatable, :secure_validatable

 validates :firstname, :lastname, :company_url, :email,  presence: true
 validates :email, uniqueness: true

 before_save :set_role

   private 

    def set_role
        a = self.email.split("@").last
       
       if a == "laxmimayee.com"
           self.role="sales_host"
        else
           self.role="client_user"
       end
   end

  def email_regexp

      if email.present? and email.match (/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i)
         errors.add :email, "This is not a valid email format"
      end

  end

end
