# Alan for Sublime Text

Provides support for Alan projects with:
- Syntax highlighting in Alan files
- Build systems for code checking with `alan validate`

Learn more about Alan here:
https://alan.m-industries.com


## Deprecating Fabric

Fabric was our internal code name for the Alan Application Platform. For the time being you can still use the `fabric` utility and the Fabric Validate build system. 


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
