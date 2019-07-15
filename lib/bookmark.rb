class Individualbookmark
  @@bookmarkarray = []
  def initialize(string)
    @string = string
    @@bookmarkarray << @string
  end
  def self.all
    @@bookmarkarray
  end
  def showstrings
    return @string
  end
end
