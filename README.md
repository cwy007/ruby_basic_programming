# 《Ruby 基础教程》 中文第四版
各章中的代码清单

## git remote
```
git remote -v

git remote rename <old> <new>

git remote rm origin
git remote add origin git@github.com:cwy007/ruby_basic_tutorial
```

# namespace

SQLite3::Database.open

```ruby
module SQLite3
  class Database
    # ...
    class << self
      alias :open :new
      # ...
    end
    # ...
  end
end
```

# 在 atom 或 sublime text 中查看已经安装的gem
```
EDITOR="atom" gem open sqlite3
EDITOR="subl" gem open sqlite3
```
