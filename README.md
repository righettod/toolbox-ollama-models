# 🤖 Ollama models library

## 🎯 Description

The goal of this repository is to centralize and store all custom models I create/manage using the [Ollama](https://ollama.com/) platform.

## 📂 Content

> [!NOTE]
> A folder by model in which a file named `Modelfile` contains the descriptor of the model.

| Folder                                 | Model source                                       | Purpose                                                                              |
| -------------------------------------- | -------------------------------------------------- | ------------------------------------------------------------------------------------ |
| [gemma3-sectest](gemma3-sectest/)      | [gemma3:4b](https://ollama.com/library/gemma3:4b)  | Custom model to generate security test content for assessing applications using LLM. |

🧑‍💻 Use this command to build a custom model: `ollama create [folder_name] -f ./[folder_name/Modelfile`.

## 📖 References

* <https://docs.ollama.com/modelfile>
