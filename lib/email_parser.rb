# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
    def initialize(cvs)
        @cvs = cvs
    end
    
    attr_accessor :cvs
    
    def parse
        @list_of_emails = @cvs.split(/,\s|\s/)
        # puts @list_of_emails.length
        # puts @list_of_emails
        @unique_list = []
        temp = ''
        @list_of_emails.each do |email|
            if temp != email
                @unique_list << email
                temp = email
            end
            
        end
        @unique_list
    end
end

string = "avi@test.com, arel@test.com test@avi.com, test@arel.com"

new_work = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")

puts new_work.cvs
new_work.parse