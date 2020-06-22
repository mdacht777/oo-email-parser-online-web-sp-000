# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :str, :temp
  def initialize(str)
    @str = str 
    puts str
  end
  
  def parse
    temp=[]
    @str.gsub!(", ", " ")
    puts @str
    @str.split(" ").each { |a|
      temp << a if !temp.include?(a) 
    }
    @str.split(" ")
    temp
  end
end