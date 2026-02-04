SK
Natural language shell command executor.

No external dependencies (just curl or wget)
Supports GR0Q, and Ollama as providers
Shows command before execution for confirmation
Automatically picks the best available model

Installation


curl -sSL https://raw.githubusercontent.com/skbasava/sk-shell/main/install.sh | sudo sh


Set your API key:
export GROQ_API_KEY="your-key"     # or
export OLLAMA_MODEL="your-model"

Usage: SK [--verbose] <instruction>
       SK --version
       SK --upgrade
       SK --help

Example: SK get all the git branches

Options:
  --verbose    Enable debug output
  --version    Show version information
  --upgrade    Upgrade to the latest version
  --help, -h   Show this help message

Description:
  SK converts natural language instructions into shell commands.
  It supports Groq and Ollama API providers.
  Set one of: GROQ_API_KEY, or OLLAMA_MODEL


Example: sk get all the git branches
sk "list all files in the current directory"
sk "create a new directory called test"
sk "create a new file called test.txt"  
