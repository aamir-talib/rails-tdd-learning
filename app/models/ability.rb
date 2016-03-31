class Ability

  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role.downcase) }
    if @user.new_record?
      guest
    end
  end

  def owner
    can_access_dashboard
  end

  def admin
    can_access_dashboard
  end

  def teacher
    can_access_dashboard
  end

  def student
    can_access_dashboard
  end

  def banned
  end

  def guest
  end

  private

  def can_access_dashboard
    can :index, :dashboard
  end

end