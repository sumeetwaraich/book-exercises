# Exercise 1
This exercise is a brief review of terminal commands.

Open up your command-line terminal, and perform the following tasks (no need to fork or download this repository):

```bash
# Navigate to your "Documents" directory
cd Documents

# Create a new folder called "quick-exercise"
mkdir quick-exercise

# Navigate into the "quick-exercise" folder you just created
cd quick-exercise

# Using the text-edit of your choice (e.g., Atom), create a new (empty) file
# called "constitution.txt" inside the "quick-exercise" folder you made


# List the contents of the folder to verify the new file is there
ls

# Search online for the text of the US Constitution and paste it into the
# "constitution.txt" file you created. Save your changes through the editor.


# Display the contents of the "constitution.txt" file in the terminal
# Hint: use the `less` command so you can easily scroll up and down.
ls constitution.txt

# Navigate to the "Desktop" folder for your machine
cd ~
cd Desktop

# Display the contents of the "Documents/quick-exercise/constitution.txt" file in the Terminal
# *without changing directories again!*
ls cat ~/Documents/quick-exercise/constitution.txt


# Bonus: Create 10 files with one single command in your terminal. Then delete them all!
touch myFolder{1..10}.txt
rm myFolder*.txt
```
