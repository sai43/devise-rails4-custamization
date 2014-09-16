class Ability
   include CanCan::Ability

      def initialize(user)
 
           user ||= User.new # guest user (not logged in)
       
          alias_action :create, :read, :update, :destroy, :to => :crud

           #can :crud, User
           #can :invite, User     
      
        if user.super_admin?
              can :manage, :all
     
              elsif user.sales_manager?
                    can :manage, :all
        
               elsif user.sales_admin?
                     can :manage, :all
             
               elsif user.sales_host?
                   can :manage, :all
 
                elsif user.sales_compliance?
                    can :manage, :all

                   elsif user.client_admin?
                      can :manage, :all

                     elsif user.client_user?
                        can :manage, :all
                  
           else
              can :read, :all
            end


   end
end

