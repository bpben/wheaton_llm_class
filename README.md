#  LLM Section of Comp255 at Wheaton College 
**CURRENTLY A WORK IN PROGRESS**

## Setup steps
1) Install pixi - Follow instructons [here](https://pixi.sh/latest/#installation)
2) Install [Ollama](https://ollama.com/)
3) Either run `sh serve_and_pull.sh` or run the following commands (once Ollama has been installed and is running)
```
ollama pull qwen2.5:1.5b
ollama pull llama3.2:1b-text-q5_K_S
```
Note: `llama3.2:1b-text-q5_K_S` is only required for a few examples in `01_llm_intro.ipynb` and can be skipped if more convenient.

4) If you are using VSCode, you should be able to open the notebooks and select the pixi kernel.  If not, you can use Jupyter Lab installed as part of the pixi environment.  In a terminal write `pixi shell`.  This will activate the pixi environment.  Then write `jupyter lab` and Jupyter Lab will open, allowing you to navigate to the notebooks and run the exercises.
