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
    can :index, :dashboard
  end

  def admin
  end

  def teacher
  end

  def student
  end

  def banned
  end

  def guest
  end
end