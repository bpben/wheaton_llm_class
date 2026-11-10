# LLM Section of COMP 255 at Wheaton College

> **Work in progress:** only Class 01 and Class 02 materials are available for now.

## Class 01: LLM Workflows

- Instructor notebook: [`notebooks_instructor/01_workflows.ipynb`](notebooks_instructor/01_workflows.ipynb)
- Student notebook: [`notebooks_student/01_workflows_student.ipynb`](notebooks_student/01_workflows_student.ipynb)
- Slides: [`slides_26/01_workflows.md`](slides_26/01_workflows.md) · PDF: [`slides_26/01_workflows.pdf`](slides_26/01_workflows.pdf)

## Class 02: Agents

- Instructor notebook: [`notebooks_instructor/02_agents.ipynb`](notebooks_instructor/02_agents.ipynb)
- Slides: [`slides_26/02_agents.md`](slides_26/02_agents.md)

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

The Codespace should start Ollama on attach. If it still isn't up:

```bash
bash .devcontainer/start-ollama.sh
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

4. Download the models:

   ```bash
   ollama pull llama3.2:1b-text-q5_K_S
   ollama pull llama3.2:1b
   ```

5. Open the notebook with the Pixi kernel, or launch JupyterLab:

   ```bash
   pixi run jupyter lab
   ```

The web-search section of Class 01 also requires internet access.  It uses Firecrawl's search API, which requires no registration but is rate limited.

## OpenRouter setup

Successful runs of Class 02 agents requires using larger models.  You can call hosted models through [OpenRouter](https://openrouter.ai/).  Free models are available, but they may rate-limit tokens.

1. Go to [openrouter.ai](https://openrouter.ai/) click "Get API Key", which will take you through creating an account.
2. Once you're logged in, goto "Keys" and create a new key.  You can set it to $0 usage, you will still be able to use free models.
3. In the repo root, copy the example env file and fill in your key:

   ```bash
   cp .env.example .env
   ```

   Edit `.env` so it contains:

   ```bash
   OPENROUTER_API_KEY=sk-or-v1-...
   ```

4. Do **not** commit `.env` (it is gitignored) and do **not** paste the key into
   a notebook cell.  Notebooks load it via `python-dotenv` (`load_dotenv()`).
5. 02 notebook has a helper for setting up calls to OpenRouter.

## Run the slides locally

Install [Node.js](https://nodejs.org/), then run:

```bash
cd slides_26
npm install
npm run class-01   # or class-02
```

Open the local URL printed in the terminal. Press the space bar or arrow keys
to move between slides.

### Note:
`playwright-chromium` in `slides_26` is a **devDependency used only for exporting**
slides to PNG/PDF — not required to present. 