# Question 1
def hello_name(user_name):
    print("hello " + user_name + "!")
hello_name("Sandra Park")

# Question 2
def first_odd():
    for i in range (1, 101, 2):
        print(i)
first_odd()

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
    min_val = min(a_list)
    max_val = max(a_list)
    return len(set(a_list)) == max_val - min_val + 1

print(is_consecutive([2, 3, 4, 5, 6, 7]))
print(is_consecutive([3, 2, 7]))