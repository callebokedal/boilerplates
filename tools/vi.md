# vi

"Escape is a safe key to hit if you've lost track of what mode you're in or what you're doing"

```bash
# Open file
vi filename

# Navigate
h 	left
j 	down
k 	up
l 	right

# Commands
ZZ          # Save and exit
:q          # Exit, if no changed made
:q!         # Exit, discard any changes

Control-D   # Scroll down
Control-U   # Scroll up
13G         # Move to row 13
G           # Move to end of file
/           # Search forward. Useful: /^pattern or /pattern$. Press 'n' for next
?           # Search backward. Useful: /^pattern or /pattern$. Press 'n' for previous

# Moving within a line
w           # Move to next word. W if punctuated
b           # Move to previous word. B if punctuated
e           # End of the current word

# Edit
i           # Insert att cursor location. Press Esc when done
a           # Same as i but after cursor location.
o           # Start insert after current line
O           # Start insert above current line

# Corrections
x           # Remove character where cursor is
4x          # Remove 4 characters where cursor is (and after)
r           # Replace single character where cursor is
R           # Replace multiple characters. Press Esc when done

```