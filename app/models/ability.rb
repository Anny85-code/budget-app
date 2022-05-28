class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :create, Transaction
      can :create, Category
      can :destroy, Transaction do |transaction|
        transaction.author_id == user.id
      end
      can :destroy, Category do |category|
        category.author_id == user.id
      end
      can :read, Transaction do |transaction|
        transaction.author_id == user.id
      end
      can :read, Category do |category|
        category.author_id == user.id
      end
    end
  end
end
