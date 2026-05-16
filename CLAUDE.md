# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Purpose

Personal library of custom [Ollama](https://ollama.com/) models used for penetration testing and security work. Each model lives in its own subdirectory with a `Modelfile`.

## Ollama Model Lifecycle Commands

```powershell
# Create/update a model from its Modelfile
ollama create <model-name> -f <path-to-Modelfile>

# Run the model interactively
ollama run <model-name>

# List locally available models
ollama list

# Remove a model
ollama rm <model-name>
```

Example for the existing model:
```powershell
ollama create gemma3-sectest -f .\gemma3-sectest\Modelfile
```

## Repository Structure

Each model is a subdirectory containing a `Modelfile`. There are no scripts, build tools, or dependencies — the repo is purely declarative.

## Modelfile Conventions

Modelfiles in this repo follow a consistent pattern:

1. **`FROM`** — base Ollama model (e.g., `gemma3:1b`)
2. **`SYSTEM`** — system prompt that defines the model's persona and constraints
3. **`PARAMETER`** — tuning values; use `temperature 0.0` for deterministic/reproducible output and set `num_ctx` explicitly
4. **`MESSAGE`** — few-shot examples pre-loaded into context to steer behavior

Models are designed for security/pentest use: concise raw output, no markdown formatting in responses, no refusals for authorized testing tasks.

## Line Endings

`.gitattributes` enforces LF for `Modelfile`, `.sh`, `.py`, and `bashrc` files. Keep this consistent when adding new models.

## Markdown Linting

`.markdownlint.json` disables MD013 (line length), MD024 (duplicate headings), MD025 (single H1), MD033 (inline HTML), and MD059 (list markers). Run linting with any markdownlint-compatible tool against `*.md` files if needed.
