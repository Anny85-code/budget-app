class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :create, Entity
      can :create, Group
      can :destroy, Entity do |entity|
        entity.author_id == user.id
      end
      can :destroy, Group do |group|
        group.author_id == user.id
      end
      can :read, Entity do |entity|
        entity.author_id == user.id
      end
      can :read, Group do |group|
        group.author_id == user.id
      end
    end
  end
end
