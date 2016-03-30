class Ability

  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role.name.downcase) }
    if @user.new_record?
      guest
    end
  end

  def owner
    can :manage, :all
  end

  def admin
    can :manage, :all
  end

  def teacher
  end

  def student
  end

  def banned
    cannot :manage, :all
  end

  def guest
  end
end