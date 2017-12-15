## 說明

1. 答案直接寫在這個 `mid-term.md` 裡，並使用 Markdown 語法撰寫。
1. 題目總共分 Ruby、Rails 以及 Git 三大主題，請在每個主題完成時進行 Commit。
1. 完成後，請發送 PR 至 `mid-term` 分支。
1. 也就是說，你的 PR 應該只會有三或四次的 Commit。

## Ruby 題目 (50 分)

1. (10 分) 請完成本題實作內容

```ruby
class Cat
  def initialize(name)
    @name = name
  end
  
  def name
    puts "#{@name}"
  end
end

kitty = Cat.new("kitty")
puts kitty.name 
```

2. (5 分) 假設有個 Hash：

```ruby
profile = {name: "kk", age: 18}
```

當執行這行程式：

```ruby
p profile["name"]
```

會得到什麼結果? 為什麼?

      會得到nil
      因為Hash 的key是 name: 不是 "name"
      name: 是symbol(符號)， "name"是字串

3. (5 分) 如果要在 1 到 100 的數字當中，任意取出 5 個不重複的亂數，你會怎麼做？

```ruby
puts [*1..100].sample(5)
```

4. (10 分)
```ruby
class Bank
  def transfer(amount)
    # ...
  end
end

Bank.transfer(10)
```

上面這段程式碼執行後會發生什麼事？為什麼？如果有錯誤又該如何修正？

        `會發生undefined method的錯誤`
 
5. (10 分) 請問以下方法：

```ruby
link_to "刪除", products_path(product), method: :delete, class: "btn btn-default"
```

`link_to` 方法共有幾個參數？為什麼？

        三個參數，因為最後一個參數是 Hash 的話，大括號可以被省略
        還原之後是變成 link_to "刪除", products_path(product), {method: :delete, class: "btn btn-default"}
        最後一個參數是Hash

6. (10 分) 在 Ruby 裡面常會看到冒號的寫法，例如：

有的冒號靠右邊：

```ruby
class Store
  has_many :products
end
```

有的冒號靠左邊：

```ruby
link_to "檢視", books_path(book), class: "btn btn-default"
```

或是兩邊都有：

```ruby
user_profile = {name: "kk", age: 18, blood_type: :b_negative}
```

請問，這三種寫法分別代表什麼意思呢？

        靠右邊:表示它是一個symbol(符號) 寫法是前面加上一個冒號
        靠左邊:表示它無法獨立存在
        兩邊都有:表示在hash裡key和value都是symbol
      
      

## Rails 題目 (30 分)

1. (10 分) 請簡述 `bundle install` 指令的用途。

            在Ruby安裝套件，要先在gemfile裡把套件的名稱及版本放進去，
            再到終端機執行bundel install bundeler就會去獲取你所指定的版本的套件

2. (10 分) 請說明 `rails db:migrate` 這個指令的用途是什麼？

          `修改資料庫結構，只會執行一次，要記得存檔再執行`

3. (10 分) 假設某個 Controller 的程式碼如下：

```ruby
class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(price: 100)
    redirect_to books_path, notice: "資料更新成功"
  end
end
```

請問：
- 第 3 行的 `@books` 前面的那個 `@` 是什麼意思？如果把 `@` 拿掉會發生什麼事？
- 第 7 行以及第 8 行的 `@book`，如果把 `@` 拿掉會發生什麼事？為什麼？


          1.加上@就是實例變數(instance variable)可以在同一個class的各種method之間互相傳遞 
            如果拿掉就會讀不Book.all的資料    
          2.會導致def index的@book讀取不到update裡@book的內容，因為沒有@就不能在method將book的資料互相傳遞
        

## Git 題目 (20 分)

1. (10 分) 在你想像中的分支(branch)，是個什麼樣子的東西?

1. (5 分) 空的資料夾無法被加入 Git 版控，但如果就是想讓這個資料夾留下來，你會怎麼處理?

2. (5 分) 如果有些檔案，像是 `/config/database.yml` 之類比較機密的檔案，不想放在 Git 裡面，你會怎麼做？

## 額外加分題 (20 分)

在你之前的作業中曾寫到：

```ruby
def odd_number_calculator(n)
  [*1..n].select(&:odd?).reduce(:+)
end

puts odd_number_calculator(100) #得到2500
```

上述程式中，第 2 行的 `select` 方法後面使用 `&:odd?` 以及 `reduce` 後面接了 `:+` 的意思是什麼呢?

