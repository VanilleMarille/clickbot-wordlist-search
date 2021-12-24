#!/usr/bin/env python
import random
import subprocess
import time

time.sleep(10)

counter=0
while True:

    counter=(counter + 1)
    print("Number: " +str(counter)) 

    time.sleep(2)
    with open('word_list') as file:
    	number_of_lines = sum(1 for _ in file)

    file=open('word_list')
    content=file.readlines()

    random_line=random.randint(1,number_of_lines)
    random_line=(random_line - 1)
    word=content[random_line]

    print("Searching for: " + word)
    subprocess.run(["./xdotool.sh", "bar"])
    subprocess.run(["xdotool", "type", word ])
    subprocess.run(["./xdotool.sh", "click"])
    
    random_time=random.randint(5,100)
    print("Sleeping for: " +str(random_time))
    
    time.sleep(random_time)
