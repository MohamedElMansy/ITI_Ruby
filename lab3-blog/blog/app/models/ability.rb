class Ability
  include CanCan::Ability

  def initialize(model)
    # Define abilities for the passed in user here. For example:
    #
     model ||= Model.new # guest user (not logged in)
     can [:create,:read,:destroy],Comment
     
    if model.present?
     
      can [:edit ,:read ],Article
      can :destroy , Article , :model_id =>model.id
    end
   
  end
end
