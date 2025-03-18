# Bash Customization Files

This folder contains user environment customization files including `.bash_aliases` and the setup script `setup_bash_custom.sh`.

## Script Documentation
- Makes a backup of .bash_aliases (If it exists).
- Creates symbolic link from `dotfiles/homefiles/.bash_aliases` to home directory
- Prompts to reload bash enviroment

## Citations
- I used generative AI (ChatGPT) for info on how to do the bash alias and help with the script. Read the prompts below: <br>
My Prompt: How do I edit ~/.bashrc file to add aliases / functions. <br>
Answer: ChatGPT told me how to put aliases in bashrc file.
- Making the script <br>
My Prompt: Make a script using these criteria: Optional pick one:
[if needed] outputs to user packages that need to be installed for your .bashrc file
[if needed] checks if being run as sudo, installs additional packages needed for your .bashrc file
REQUIRED pick one:
copies or symbolically links the .bashrc file in your dotfiles repository to your user's home directory
yes, this means getting rid of, or better, moving (renaming) the original as a backup, and having the sym link named ~/.bashrc be in its place. remind (prompt) the user to reload their environment (with source or by logging out and back on) <br>
Answer: Made the script found in this dotfiles repo.

## How to Use
Run the script to back up your existing aliases, symlink to the new one, and apply it:
```bash
./setup_bash_custom.sh
