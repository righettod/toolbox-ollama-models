# 🤖 Ollama models library

[![Validate models](https://github.com/righettod/toolbox-ollama-models/actions/workflows/validate.yml/badge.svg?branch=main)](https://github.com/righettod/toolbox-ollama-models/actions/workflows/validate.yml)

## 🎯 Description

The goal of this repository is to centralize and store all custom models I create/manage using the [Ollama](https://ollama.com/) platform.

## 📂 Content

> [!NOTE]
> Structure used is a folder by model, in which, a file named `Modelfile` contains the descriptor of the model.

| Folder                                                 | Model source                                           | Purpose                                                                                                                                                                                                       |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [gemma3-sectest](gemma3-sectest/)                      | [gemma3:4b](https://ollama.com/library/gemma3:4b)      | Custom model to generate security test content for assessing applications using LLM.                                                                                                                          |
| [llama-3.1-8b-abliterated](llama-3.1-8b-abliterated/)  | [llama3.1:8b](https://ollama.com/library/llama3.1:8b)  | Abliterated version of the model **llama3.1:8b** based on [the one created](https://ollama.com/BlackHillsInfoSec/llama-3.1-8b-abliterated:latest) by [BlackHillsInfoSec](https://www.blackhillsinfosec.com/). |

🧑‍💻 Use this command to build a custom model: `ollama create [folder_name] -f ./[folder_name]/Modelfile`.

## 📖 References

* <https://docs.ollama.com/modelfile>
