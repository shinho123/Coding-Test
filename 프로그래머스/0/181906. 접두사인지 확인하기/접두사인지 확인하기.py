def solution(my_string, is_prefix):
    
    my_string_cp = my_string
    
    my_string_filter_list = []
    
    for i in range(0, len(my_string_cp) + 1):
        my_string_filter_list.append(my_string_cp[:i])
    
    answer = (1 if is_prefix in my_string_filter_list else 0)
    
    return answer