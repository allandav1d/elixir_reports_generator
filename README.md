# ElixirReportsGenerator

This project is a simple example of how to generate reports in Elixir.

Transforming a CSV file into a report in HTML.

## Installation

To install this project, you need to have Elixir installed in your machine. If you don't have it, you can follow the instructions in the [official website](https://elixir-lang.org/install.html).

### Install dependencies

To install the dependencies, you need to run the following command:

  ```bash
  mix deps.get
  ```

### Run project

To run the project, you need to run the following command:

  ```bash
  iex -S mix
  ```

### Dependencies

This project has the following dependencies:

  * [Credo](https://github.com/rrrene/credo) - A static code analysis tool for the Elixir language with a focus on teaching and code consistency.

```elixir
def deps do
  [
    {:elixir_reports_generator, "~> 0.1.0"}
  ]
end
```

### Init Credo 

Credo is a static code analysis tool for the Elixir language with a focus on teaching and code consistency.

The following steps are required to initialize Credo in your project:

  ```bash
  mix credo gen.config
  mix credo
  ```

### Disabled some Credo checks

This project has some disabled checks, to enable them, just undo the changes in the file `credo.exs`:

  ```elixir
  # Disabled checks
  checks: %{
        enabled: [
          #{Credo.Check.Readability.ModuleDoc, []},  -- change to 
          {Credo.Check.Readability.ModuleDoc, false}, -- this
        ],
  }
  ```

### Run Credo

To run Credo, you need to run the following command:

  ```bash
  mix credo
  ```

  You can also run Credo checks on lower priority by running (Preferred):

  ```bash
  mix credo --strict
  ```

### Vscode extension 

To maximize your productivity, you can install the following extensions in your vscode:

* [ElixirLinter](https://marketplace.visualstudio.com/items?itemName=iampeterbanjo.elixirlinter) - ElixirLinter is a VSCode extension that provides linting support powered by Credo.

* [Elixir snippets](https://marketplace.visualstudio.com/items?itemName=florinpatrascu.vscode-elixir-snippets) - Elixir code snippets for VS Code

* [ElixirLS: Elixir support and debugger](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls) - Elixir support with debugger, autocomplete, and more. Powered by ElixirLS.

* [vscode-elixir](https://marketplace.visualstudio.com/items?itemName=mjmcloug.vscode-elixir) - Elixir support for VSCode
