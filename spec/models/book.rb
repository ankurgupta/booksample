require 'spec_helper' 

describe Book do 
  
  it "has a valid factory" do
    book = build(:book)
    book.should be_valid
  end
  
   it "is invalid without a title" do
     book = build(:book, title: nil)
     book.should be_invalid
   end
   
   it "is invalid without a author" do
     book = build(:book, author: nil)
     book.should be_invalid
   end
   
   it "is invalid without a rank" do
     book = build(:book, rank: nil)
     book.should be_invalid
   end
   it "is invalid without a isbn10" do
     book = build(:book, isbn10: nil)
     book.should be_invalid
   end
   
   it "is invalid without a isbn13" do
     book = build(:book, isbn13: nil)
     book.should be_invalid
   end
   
   it "isbn10 is invalid less than 10 digit" do
     book = build(:book, isbn10: 12345)
     book.should be_invalid
   end
   
   it "isbn13 is invalid less than 13 digit" do
     book = build(:book, isbn13: 12345)
     book.should be_invalid
   end
   
   it "isbn10 is invalid greater than 10 digit" do
     book = build(:book, isbn13: 12345678901234)
     book.should be_invalid
   end
   
   it "isbn13 is invalid greater than 13 digit" do
     book = build(:book, isbn13: 12345678912345)
     book.should be_invalid
   end
   
   it "isbn10 is invalid if duplicate" do
     book = create(:book)
     book = build(:book_two, isbn10: 1234567890)
     book.should be_invalid
   end
   
   it "isbn13 is invalid if duplicate" do
     book = create(:book)
     book = build(:book_two, isbn13: 1234567890123)
     book.should be_invalid
   end
   
end