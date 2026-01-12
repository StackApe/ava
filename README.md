# Ava - ApX Virtual Assistant

Ava is an AI assistant fine-tuned for the [ApX programming language](https://github.com/StackApe/ApXript). She helps you learn ApX syntax, write code, and understand the language.

## Quick Install

### Prerequisites
- [Ollama](https://ollama.com) installed

### One-liner
```bash
curl -fsSL https://raw.githubusercontent.com/StackApe/ava/main/install.sh | bash
```

### Manual Install
```bash
# Download model (8.5GB)
wget https://huggingface.co/Vizohugz/ava-gguf/resolve/main/ava-q8.gguf

# Download Modelfile
wget https://raw.githubusercontent.com/StackApe/ava/main/Modelfile

# Import to Ollama
ollama create ava -f Modelfile

# Run
ollama run ava
```

## Usage

```bash
ollama run ava
```

Then ask anything about ApX:

```
>>> How do I define a function?
Use the `fn` keyword:

fn greet $name {
    echo "Hello, $name!"
}

>>> How do I filter even numbers from a list?
Use the filter command with a closure:

[1, 2, 3, 4, 5, 6] | filter { $it % 2 == 0 }
# Output: [2, 4, 6]
```

## What Ava Knows

- ApX syntax and commands
- Pipeline operations (map, filter, reduce, each)
- Functions, closures, and objects
- Pattern matching
- Error handling (try/catch)
- File operations
- Data formats (JSON, CSV)
- And more...

## About

Ava is a fine-tuned Llama 3.1 8B model, trained specifically for ApX programming assistance.

Created by **Bones the Stack Ape** and **Claude**.

## Links

- [ApX Language](https://github.com/StackApe/ApXript)
- [Stack Ape Academy](https://youtube.com/@stackape)
- [Model on HuggingFace](https://huggingface.co/Vizohugz/ava-gguf)
