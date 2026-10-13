# LLM Section of COMP 255 at Wheaton College

> **Work in progress:** only Class 01 is available for now.

## Class 01: LLM Workflows

- Instructor notebook: [`notebooks_instructor/01_workflows.ipynb`](notebooks_instructor/01_workflows.ipynb)
- Slides: [`slides_26/01_workflows.md`](slides_26/01_workflows.md)

## GitHub Codespaces

Create a Codespace from this repository. The dev container installs the Python
environment, Ollama, and the required models automatically. Initial setup may
take several minutes while the models download.

## Local setup

1. Install [Pixi](https://pixi.sh/latest/).
2. Install and start [Ollama](https://ollama.com/).
3. Install the environment:

   ```bash
   pixi install
   ```

4. Download the models:

   ```bash
   ollama pull llama3.2:1b-text-q5_K_S
   ollama pull llama3.2:1b
   ```

5. Open the notebook with the Pixi kernel, or launch JupyterLab:

   ```bash
   pixi run jupyter lab
   ```

The web-search section of the notebook also requires internet access to the
Firecrawl search API.

## Run the slides locally

Install [Node.js](https://nodejs.org/), then run:

```bash
cd slides_26
npm install
npm run dev
```

Open the local URL printed in the terminal. Press the space bar or arrow keys
to move between slides.
