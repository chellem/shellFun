Lab 1
=====

1. Write a script called **exists**, which indicates whether a named file exists or not.

2. Write a modified version of the **show** example script (the first example of the if-statement given above), which prints out the message "File does not exist" if the user gives a name which isn't a file or directory, and the message "You must give an argument" if the user doesn't give an argument to the program.

3. Write a script called **save** which copies a file into a special directory, and another called **recover** which copies a file back out the special directory.  The user of the script should not be aware of the location of the special directory (obviously the script will be).

4. Alter your scripts so that, if you try to save a file which already exists in the special directory, the script refuses to save the file and prints out a message to that effect.

5. Write a script which checks whether a given file contains a given word.  If it does, the script should output the message "The file contains the word"; if not, it should output the message "The file doesn't contain the word".

6. **[Optional - trickly!]** Write a script which checks whether a given file was created today (Hint: the **ls -l** command includes a listing of the date a file was created).

7. Alter your **save** script so that, if a file has previously been saved, the user is asked whether it should be overwritten (Hint: use the **read** command to get the user's decision).

8. Write a script which lists all files in the current directory which have also been stored in your special by the **save** script.

9. Adapt your answer to exercise five so that you list all files in your current directory which include a given word.

10. Write an interactive script which allows the user to repeatedly apply the **save** and **restore** scripts.  It should continuously prompt the user for commands, which can be either of the form **save <file>**, **restore <file>**, or **quit**.  Hint: use **while**, **read** and **case**.

11. Write a script which searches all the sub-directories of your current directory for files with a given name. Hint: use **for**, **if**, **cd**