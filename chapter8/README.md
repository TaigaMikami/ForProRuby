Ruby モジュール


- モジュールからインスタンスを作成することはできない。
- ほかのmジュールやクラスを継承することはできない。


> <font color="red">is-aの関係が成り立たない場合 **継承** は避けるべき!!</font>

```
# 例
class Product
	def log(text)
		puts "[LOG] #{text}
	end
end

class User
	def log(text)
		puts "[LOG] #{text}
	end
end
```

ログの処理が重複している → しかしis-aの関係でない！！
そんなときに！！ **モジュール！**

```
module Loggable
	private

	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	include Loggable #モジュールを利用するときはincludeメソッド
end
```
