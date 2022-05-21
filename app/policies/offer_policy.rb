class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    owner_admin?
  end

  def destroy?
    owner_admin?
  end

  private

  def owner_admin?
    (user == record.user) || (user.role == 'admin')
  end
end
