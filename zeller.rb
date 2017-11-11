#Zeller's rule formula
#Kevin Lizander
#kevin9075@gmail.com
#reddit challenge: https://redd.it/79npf9
$f = 0

def assign_variables(date)
  @date = date.split(" ")
  @year = @date[0]
  @month_num = @date[1]
  @day = @date[2].to_i
  @k = @day.to_i
  @m = get_month_number(@month_num)
  @c = @year[0..1].to_i
  @d = @year[(@year.length - 2)..(@year.length - 1)].to_i
  compute_value(@k,@m,@d,@c)
end

def get_month_number(month_num)
  @month_number = [0,11,12,1,2,3,4,5,6,7,8,9,10]
  return @month_number[month_num.to_i]
end

def get_day_name(f)
  @names = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
  "Friday", "Saturday", "Sunday"]
  if (f > 7)
    f = f % 7
  end
  puts @names[f]
end

def compute_value(k,m,d,c)
  $f = k + ((13 * m - 1) / 5) + d + (d/4) + (c/4) - (2*c)
end



puts "Welcome to the Zeller's Rule program, please input the date in the following
      format (YYYY MM DD)"
 @date = gets.chomp
 assign_variables(@date)
 get_day_name($f)
