class Foo
  def self.bar
    self.baz
  end

  def baz
    bar
  end
end


## これはerror
