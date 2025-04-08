#  LLM Section of Comp255 at Wheaton College 
**CURRENTLY A WORK IN PROGRESS**

## Setup with Codespaces
1) Select "use as template" in the top right of [the main page of the repo](https://github.com/bpben/wheaton_llm_class)
2) Click on "Open in a Codespace, which will start a [Github Codespace](https://github.com/features/codespaces)
NOTE: This will take some time on the first run, and it's not clear when the environment is finished building. Leave it for some time before following the directions under "installing models".

## Setup locally
1) Install pixi - Follow instructons [here](https://pixi.sh/latest/#installation)
2) Install [Ollama](https://ollama.com/)
3) If you are using VSCode, you should be able to open the notebooks and select the pixi kernel.  If not, you can use Jupyter Lab installed as part of the pixi environment.  In a terminal write `pixi shell`.  This will activate the pixi environment.  Then write `jupyter lab` and Jupyter Lab will open, allowing you to navigate to the notebooks and run the exercises.

## Installing models
The main model used is [qwen2.5:1.5b](https://ollama.com/library/qwen2.5:1.5b).  To pull this model run `ollama pull qwen2.5:1.5b`.

To run the first few cells of the first notebook, you will need the [pretrained version of llama 3.2](https://ollama.com/library/llama3.2:1b-text-q5_K_S): `ollama pull llama3.2:1b-text-q5_K_S`.

The agent workflow will likely fail unless you use the [7B version of Qwen2.5](https://ollama.com/library/qwen2.5:7b): `ollama pull qwen2.5:7b`.  Note - this can be used in place of the 1.5b parameter model, but you will need to change the `sft_model` parameter in the notebooks.

To run ALL notebooks:
```
ollama pull qwen2.5:1.5b
ollama pull qwen2.5:7b
ollama pull llama3.2:1b-text-q5_K_S
```
