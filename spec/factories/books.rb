FactoryGirl.define do
  factory :book do |f|
    f.title 'book title'
    f.author 'ankur'
    f.rank 1234
    f.isbn10 1234567890
    f.isbn13 1234567890123
  end
  
  factory :book_two, :class => 'Book' do |f|
    f.title 'book title'
    f.author 'ankur'
    f.rank 1234
    f.isbn10 2234567890
    f.isbn13 2234567890123
  end
  
end