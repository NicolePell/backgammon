class Player

  attr_reader :name, :checkers, :content

  def initialize(name)
    @name = name
    @checkers = []
    @content = content
  end

  def add_checker(content)
    checkers << content
  end

end
