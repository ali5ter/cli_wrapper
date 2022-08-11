# CLI Wrapper
Written to help run usability studies on existing CLIs, this simple script will wrap an existing CLI, catch specific commands to fake the responses, and pass through any other command directly to the CLI. 
This way the participant feels like they're using the actual CLI but see specific modifications that the test protocol would ask the participant to perform.

# Example usage
An example here presents Squidward as part of the git CLI command.

Point at the script that parses the CLI command and provides routes to fake behaviors

export CLI_WRAPPER_PARSER="$PWD/examples/git_example_wrapper.sh"

Alias the CLI you want to wrap

alias git="$PWD/cli_wrapper"

Now use the CLI command...
![screencast demo of CLI Wrapper](https://raw.githubusercontent.com/ali5ter/cli_wrapper/master/cli_wrapper_demo.gif)
