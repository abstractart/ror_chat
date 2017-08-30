class CommentPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  private

  def owner?
    comment.user == user
  end
end