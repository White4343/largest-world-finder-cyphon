cpdef find_largest_word_in_file(filename):
    with open(filename) as f:
        lines = f.readlines()
        line_num = 0
        longest_word = None
        for line in lines:
            line = line.strip()
            if len(line) == 0:
                return None
            else:
                line_num += 1
                tokens = line.split()
                for token in tokens:
                    if longest_word is None or len(token) > len(longest_word):
                        longest_word = token
            # return here would exit the loop too early after 1st line
        # loop ended
        print(str(longest_word))
