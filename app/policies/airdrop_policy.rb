class AirdropPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update? # both edit and update
    # ICI C'EST AIRDROP OU PAS ?
    # c'est RECCORD.USER OU RECCORD.AIRDROP
    user.admin || record.user == user
  end

  def show?
    true
  end

  def create?
    true
  end

  def donate?
    true
  end

  def register?
    true
  end


  def destroy?
    user.admin || record.user == user
  end
end
