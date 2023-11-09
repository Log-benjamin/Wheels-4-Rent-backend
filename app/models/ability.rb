class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_admin == true
      can :manage, :all
    else
      can :read, :all
      can :manage, Reservation, user_id: user.id
    end
  end
end
