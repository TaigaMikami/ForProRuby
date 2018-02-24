class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなし
    "Hello, I am #{name}"
  end

  def hi
    # selfあり
    "Hello, I am #{self.name}"
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    "My name is #{@name}"
  end
end

user = User.new('Alice')
puts user.hello
puts user.hi
puts user.my_name

# selfキーワードはインスタンス自身を表す
# メソッドの内部で他のメソッドを呼び出す場合は
# 暗黙的にselfに対してメソッドを呼び出しているためselfは省略可能
# -> 明示的にselfをつけtメソッドを呼び出しても良い

# セッターメソッド(name = など)を呼び出す場合にはselfを必ずつける!
