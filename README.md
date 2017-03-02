# Alan/Fabric syntax highlighting for Sublime Text

## How to install

- Start Sublime Text 3
- Make sure packagecontrol has been installed
- Open command palette (ctrl-shift-p)
- Choose "Add repository"
- Enter "http://m-industries.com/sublime/fabric-sublime-repository.json"
- You can now open the command palette and run "Install Package" and select "Fabric Sublime Syntax"

The package will be updated automatically.

## Recommended keybindings

Alan uses `()` extensively. If you press enter when you cursor is between the braces, you'll end up with this:

```
(
	|)
```

In most cases this is more useful:

```
(
	|
)
```

Sublime has this behaviour by default for curly braces `{}`. Add this to your Key Bindings file to copy this behaviour for parentheses:

```
{
"keys": ["enter"], "command": "run_macro_file", "args": {"file": "res://Packages/Default/Add Line in Braces.sublime-macro"}, "context":
    [
        { "key": "setting.auto_indent", "operator": "equal", "operand": true },
        { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true },
        { "key": "preceding_text", "operator": "regex_contains", "operand": "\\($", "match_all": true },
        { "key": "following_text", "operator": "regex_contains", "operand": "^\\)", "match_all": true }
    ]
}
```
