class User
  def initialize(name)
    @name = name
  end

  # ここがクラスメソッド(self付)でない場合
  # インスタンを作成しないとerrorになる
  def self.create_users(names)
    names.map { |name| User.new(name) }
  end

  def hello
    "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']

users = User.create_users(names)

users.each do |user|
  puts user.hello
end
