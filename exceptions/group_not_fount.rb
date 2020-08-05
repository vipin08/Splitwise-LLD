class GroupNotFound < RuntimeError
  def initialize(msg = "Group Not Found!")
    super(msg)
  end
end
