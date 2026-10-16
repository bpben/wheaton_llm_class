# LLM Section of COMP 255 at Wheaton College

> **Work in progress:** only Class 01 and Class 02 notebook are available for now.

## Class 01: LLM Workflows

- Instructor notebook: [`notebooks_instructor/01_workflows.ipynb`](notebooks_instructor/01_workflows.ipynb)
- Slides: [`slides_26/01_workflows.md`](slides_26/01_workflows.md)

## Class 02: ReAct Workflows

- Instructor notebook: [`notebooks_instructor/02_workflows.ipynb`](notebooks_instructor/02_workflows.ipynb)
- Slides: TBA

## GitHub Codespaces

Create a Codespace from this repository. The dev container installs the Python
environment, Ollama, and the required models automatically. Initial setup may
take several minutes while the models download.

### Codespaces troubleshooting

**Notebook won't attach to a kernel / "Select Kernel" is empty**

1. Click on the current kernel (top right of notebook)
2. Select "Create Python Environment"
3. Select "Enter interpreter path"
4. Enter the full path to the Python interpreter: `/workspaces/wheaton_llm_class/.pixi/envs/default/bin/python`

**`ConnectionError: Failed to connect to Ollama`**

Ollama sometimes isn't running after the Codespace wakes up. In a terminal:

```bash
nohup ollama serve > /tmp/ollama.log 2>&1 &
ollama list
```

If the models are missing, pull them:

```bash
ollama pull llama3.2:1b-text-q5_K_S
ollama pull llama3.2:1b
```

Then rerun the notebook cell.

## Local setup

1. Install [Pixi](https://pixi.sh/latest/).
2. Install and start [Ollama](https://ollama.com/).
3. Install the environment:

   ```bash
   pixi install
   ```

   (optional) Class 02's OpenAI Agent SDK section needs the `extras` environment:

   ```bash
   pixi install -e extras
   ```

4. For OpenRouter (used in Class 02), copy [`.env.example`](.env.example) to
   `.env` and set `OPENROUTER_API_KEY`. Do not commit `.env`.

5. Download the models:

   ```bash
   ollama pull llama3.2:1b-text-q5_K_S
   ollama pull llama3.2:1b
   ```

6. Open the notebook with the Pixi kernel, or launch JupyterLab:

   ```bash
   pixi run jupyter lab
   ```

The web-search section of Class 01 also requires internet access.  It uses Firecrawl's search API, which requires no registration but is rate limited.

## Run the slides locally

Install [Node.js](https://nodejs.org/), then run:

```bash
cd slides_26
npm install
npm run dev
```

Open the local URL printed in the terminal. Press the space bar or arrow keys
to move between slides.
