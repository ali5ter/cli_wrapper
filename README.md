# CLI Wrapper
Written to help run usability studies on existing CLIs, this simple script will wrap an existing CLI, catch specific commands to fake the responses, and pass through any other command directly to the CLI.

This way the participant feels like they're using the actual CLI but see specific modifications that the test protocol might ask the participant to perform.

## Usage
You write a script that parses for the commands you want to override in the CLI command, set `CLI_WRAPPER_PARSER` env var to point at your script and alias the CLI command so it uses the `cli_wrapper` script given and away you go.

## Example
An example here presents a new 'squid me' command as part of the git CLI command.

1. Point at the script that parses the CLI command and provides routes to fake behaviors.
```
  export CLI_WRAPPER_PARSER="$PWD/examples/git_example_wrapper.sh"
```
2. Alias the CLI you want to wrap
```
  alias git="$PWD/cli_wrapper"
```
3. Now use the CLI command...

![screencast demo of CLI Wrapper](https://raw.githubusercontent.com/ali5ter/cli_wrapper/master/cli_wrapper_demo.gif)
