def days_in_month(month, year)
  if month == 4 || month == 6 ||month == 9 || month == 11 
    return 30 
  elsif month != 2 
    return 31 
  else 
    return 28 unless leap_year(year)
    return 29
  end 
  
  
end 

def leap_year(date)
  if date % 400 == 0 
    return true 
  elsif date % 100 == 0 
    return false 
  elsif date % 4 == 0 
    return true 
  else 
    return false 
  end 
  
end 
def counting_sundays
  sundays = 0 
  
end 

counting_sundays
#leap_year(1904)
=begin
You are given the following information, but you may prefer to do some research for yourself.
1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end 