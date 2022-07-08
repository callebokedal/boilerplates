# Sublime
Not used anymore...

## Splitting the Selection into Lines

Select a block of lines, and then split it into many selections, one per line, using:

    Windows/Linux: Ctrl+Shift+L
    Mac: ⇧+⌘+L

## Find All

To add all occurrences of the current word to the selection, use Find All:

    Windows/Linux: Alt+F3
    Mac: ⌃+⌘+G

## Advanced search and replace

    Use regexp groups to find and replace certain patterns

    Find:       ";#([0-9])"
    Replace:    ";\n$1"

    Result: ";#123" -> ";\n123"

## Adding a Line

To add the line above or below to the selection, use:

    Windows/Linux: Ctrl+Alt+⬆ and Ctrl+Alt+⬇
    Mac: ⌃+⇧+⬆ and ⌃+⇧+⬇

If you go too far, use Undo Selection to step backwards:

    Windows/Linux: Ctrl+U
    Mac: ⌘+U

## Column selection

Using the Mouse

Different mouse buttons are used on each platform:
Mac

    Left Mouse Button+⌥
    OR: Middle Mouse Button

    Add to selection: ⌘
    Subtract from selection: ⇧+⌘

Windows

    Right Mouse Button+Shift
    OR: Middle Mouse Button

    Add to selection: Ctrl
    Subtract from selection: Alt

Linux

    Right Mouse Button+Shift

    Add to selection: Ctrl
    Subtract from selection: Alt

Using the Keyboard
Mac

    Ctrl+Shift+⬆
    Ctrl+Shift+⬇

Windows

    Ctrl+Alt+⬆
    Ctrl+Alt+⬇

Linux

    Alt+Shift+⬆
    Alt+Shift+⬇
