# Question 1
def hello_name(user_name):
    user_name = "Sandra Park"
    print("hello " + user_name + "!")

# Question 2
def first_odd():
    for i in range (1, 101, 2):
        print(i)

# Question 3
def max_num_in_list(a_list):
    return max(a_list)

# Question 4
def is_leap_year(a_year):
    if (a_year % 4 == 0 and a_year % 100 != 0) or (a_year % 400 == 0):
        return True
    else:
        return False

# Question 5
def is_consecutive(a_list):
    return sorted(a_list) == list(range(min(a_list), max(a_list)+ 1))