---
theme: default
title: LLM Agents - Wheaton 2026
css: style.css
info: |
  LLM Agents - Wheaton 2026 talk deck
---

<div class="grid h-full w-full min-h-0 grid-cols-[minmax(0,38%)_minmax(0,62%)] items-center gap-6">

<div class="min-w-0">

# LLM Agents
### Prepared for Wheaton College: COMP 255
#### Ben Batorsky

</div>

<div class="flex h-full min-h-0 min-w-0 items-center justify-center gap-4">

<div class="i-carbon-user text-7xl opacity-80 shrink-0" />
<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
<div class="i-carbon-machine-learning-model text-7xl opacity-80 shrink-0" />

<div class="flex flex-col justify-center gap-3 shrink-0">
  <div class="flex items-center gap-3">
    <div class="i-carbon-arrow-right text-4xl opacity-60" />
    <div class="i-carbon-search text-6xl opacity-80" />
  </div>
  <div class="flex items-center gap-3">
    <div class="i-carbon-arrow-right text-4xl opacity-60" />
    <div class="i-carbon-notebook text-6xl opacity-80" />
  </div>
  <div class="flex items-center gap-3">
    <div class="i-carbon-arrow-right text-4xl opacity-60" />
    <div class="i-carbon-chat text-6xl opacity-80" />
  </div>
</div>

</div>

</div>

<div class="absolute bottom-2 left-0 right-0 text-center text-[10px] opacity-70">
  AI coding assistance was used in developing these materials
</div>

---
layout: center
---

# Review: LLM Workflows

---
layout: default
---

# Building blocks from last time

<div class="flex h-[75%] w-full items-center justify-center gap-3 px-2 text-sm">

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Pre-trained</div>
  <div class="text-xs leading-snug text-center opacity-85">next-token prediction</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-user-favorite text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Instruction-tuned</div>
  <div class="text-xs leading-snug text-center opacity-85">follow directions (RLHF)</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-data-base text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Memory</div>
  <div class="text-xs leading-snug text-center opacity-85">append + retrieve context</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-tool-kit text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Tools</div>
  <div class="text-xs leading-snug text-center opacity-85">call external functions</div>
</div>

</div>

---
layout: default
---

# Healthbot: a fixed workflow

<div class="flex h-[78%] w-full flex-col items-center justify-center gap-5 px-2 text-sm">

<div class="flex w-full items-start justify-center gap-3">

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[9.5rem]">
  <div class="i-carbon-user text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Patient</div>
  <div class="text-xs leading-snug text-center opacity-85">“I'm coughing and sneezing”</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0 self-center" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[8rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Parse symptoms</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0 self-center" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[8rem]">
  <div class="i-carbon-search text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Web query</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0 self-center" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[8rem]">
  <div class="i-carbon-chat text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Respond</div>
</div>

</div>

<div class="text-center text-lg opacity-85 pt-2">
  Same steps every time — <em>we</em> chose the path
</div>

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# What is an agent?

::left::

<div class="flex h-full items-center">

<div class="text-lg leading-relaxed">
  <span class="font-semibold">Anthropic:</span> Systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks.
</div>

</div>

::right::

<div class="flex h-full items-center">

<div class="text-sm leading-tight w-full">

<div class="grid grid-cols-[auto_1fr_1fr_1fr] gap-x-3 gap-y-5 items-center">

<div></div>
<div class="font-semibold text-center opacity-80">Decide output<br/>of step</div>
<div class="font-semibold text-center opacity-80">Decide which<br/>steps to take</div>
<div class="font-semibold text-center opacity-80">Decide what steps<br/>are available</div>

<div class="font-semibold text-base pr-2">Code</div>
<div class="flex justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-user text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-user text-5xl opacity-80" /></div>

<div class="font-semibold text-base pr-2">Workflow</div>
<div class="flex justify-center"><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-user text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-user text-5xl opacity-80" /></div>

<div class="font-semibold text-base pr-2">Agent</div>
<div class="flex justify-center"><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
<div class="flex justify-center items-center gap-1"><div class="i-carbon-arrow-right text-2xl opacity-40" /><div class="i-carbon-user text-5xl opacity-80" /></div>

</div>

</div>

</div>

---
layout: center
---

# Today: give the model <mark>agency</mark>

---
layout: two-cols-header
layoutClass: gap-4
---

# Model versus Agent

::left::

## OpenAI announcing GPT-6-Astra

<div class="text-lg leading-relaxed">
  “Astra is state-of-the-art on computer use, browsing, software engineering, cybersecurity, science, and professional work.”
</div>

<div class="text-[10px] leading-snug opacity-85 pt-3">

[openai.com/index/gpt-6-astra](https://openai.com/index/gpt-6-astra/)

</div>

::right::

## Anthropic on Claude Sonnet 4.5

<div class="text-lg leading-relaxed">
  “Claude Sonnet 4.5 is the best coding model in the world. It's the strongest model for building complex agents. It's the best model at using computers. And it shows substantial gains in reasoning and math.”
</div>

<div class="text-[10px] leading-snug opacity-85 pt-3">

[anthropic.com/news/claude-sonnet-4-5](https://www.anthropic.com/news/claude-sonnet-4-5)

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# Agent vs Workflow

::left::

## Simon Willison

<div class="text-lg leading-relaxed">
  “An LLM agent runs tools in a loop to achieve a goal.”
</div>

<div class="text-[10px] leading-snug opacity-85 pt-3">

[simonwillison.net/2025/Sep/18/agents](https://simonwillison.net/2025/Sep/18/agents/)

</div>

::right::

## OpenAI

<div class="text-lg leading-relaxed">
  “Agents are systems that independently accomplish tasks on your behalf.”
</div>

<div class="text-[10px] leading-snug opacity-85 pt-3">

[A practical guide to building AI agents](https://openai.com/business/guides-and-resources/a-practical-guide-to-building-ai-agents/)

</div>

---
layout: default
---

# Have we built an agent?

|  | Agent? |
| --- | --- |
| llama3.2:1b |  |
| Healthbot 01 | |

---
layout: default
---

# What is an agent?

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/aima-fig-2-1.png" alt="Figure 2.1: agents interact with environments through sensors and actuators" class="max-h-[50vh] w-auto max-w-full object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

Russell, S., & Norvig, P. (2020). *Artificial Intelligence: A Modern Approach*, Figure 2.1.

</div>

</div>

---
layout: default
---

# Agent components

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/nvidia-agent-components.png" alt="Agent core connected to a memory module, planning module, tools, and a user request" class="max-h-[50vh] w-auto max-w-full object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

Tanay Varshney, [Introduction to LLM Agents](https://developer.nvidia.com/blog/introduction-to-llm-agents/), *NVIDIA Technical Blog*, 30 Nov. 2023.

</div>

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# Memory / Context

::left::

<div class="text-lg leading-relaxed">

- **Working memory / Short term memory**: One "session" with the agent

- **Project context / Long term memory**: Indexing of the codebase, `AGENTS.md`

- **Tool representations**: How to call the tool

</div>

::right::

```python
messages = [
    {"role": "system",
     "content": "You are a helpful assistant with tool calling capabilities."},
    {"role": "user",
     "content": "What is the date today?"},
    {"role": "assistant",
     "tool_calls": [{"name": "today", "arguments": {"text": ""}}]},
    {"role": "tool",
     "content": "2026-10-21"},
    {"role": "assistant",
     "content": "Today's date is 2026-10-21."},
]
```

---
layout: default
---

# Planning - Chain of Thought (2022)

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/zero-shot-cot.png" alt="Zero-shot answer of 8 versus zero-shot chain-of-thought reasoning to 4 blue golf balls" class="max-h-[50vh] w-auto max-w-full object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

Kojima et al. (2022). [Large Language Models are Zero-Shot Reasoners](https://arxiv.org/pdf/2205.11916).

</div>

</div>

---
layout: center
---

# Notebook: Chain of Thought

---
layout: default
---

# Planning - Reason+Action (ReAct, 2023)

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/react-comparison.png" alt="Standard, reason-only, and act-only answers fail; ReAct reaches the correct answer" class="max-h-[50vh] w-auto max-w-full object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

Yao et al. (2023). [ReAct: Synergizing Reasoning and Acting in Language Models](https://react-lm.github.io/).

</div>

</div>

---
layout: center
---

# Notebook: ReAct

---
layout: default
---

# Healthbot Agent

<div class="flex h-[78%] w-full flex-col items-center justify-center gap-5 px-2 text-sm">

<div class="grid w-full grid-cols-[auto_auto_auto_auto_auto_auto_auto_auto_auto] items-center justify-center justify-items-center gap-x-3 gap-y-3">

<div class="col-start-3 row-start-1 row-span-4 self-stretch justify-self-stretch rounded border"></div>
<div class="col-start-5 row-start-1 row-span-4 self-stretch justify-self-stretch rounded border"></div>
<div class="col-start-7 row-start-1 row-span-4 self-stretch justify-self-stretch rounded border"></div>
<div class="col-start-9 row-start-1 row-span-4 self-stretch justify-self-stretch rounded border"></div>

<div class="col-start-1 row-start-1 row-span-4 flex max-w-[8rem] flex-col items-center justify-center gap-1.5">
  <div class="i-carbon-user text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">User</div>
  <div class="text-base font-semibold text-center leading-tight">What are my past symptoms?</div>
</div>

<div class="col-start-2 row-start-1 row-span-4 flex justify-center">
  <div class="i-carbon-arrow-right text-3xl opacity-60" />
</div>

<div class="col-start-3 row-start-1 row-span-4 z-10 flex w-[9rem] flex-col items-center self-stretch px-3 pt-3 pb-3">
  <div class="text-xs font-semibold uppercase tracking-wide opacity-70">Reason</div>
  <div class="flex flex-1 flex-col items-center justify-center gap-1.5">
    <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
    <div class="text-base font-semibold text-center leading-tight">What do I do next?</div>
  </div>
</div>

<div class="col-start-4 row-start-1 row-span-4 flex justify-center">
  <div class="i-carbon-arrow-right text-3xl opacity-60" />
</div>

<div class="col-start-5 row-start-1 row-span-4 z-10 flex w-[9rem] flex-col self-stretch px-3 pt-3 pb-3">
  <div class="text-center text-xs font-semibold uppercase tracking-wide opacity-70">Act</div>
  <div class="grid flex-1 grid-rows-3 items-center justify-items-center">
    <div class="flex flex-col items-center gap-1.5">
      <div class="i-carbon-search text-5xl opacity-80" />
      <div class="text-base font-semibold text-center leading-tight">Search data</div>
    </div>
    <div class="flex flex-col items-center gap-1.5">
      <div class="i-carbon-notebook text-5xl opacity-80" />
      <div class="text-base font-semibold text-center leading-tight">Add to journal</div>
    </div>
    <div class="flex flex-col items-center gap-1.5">
      <div class="i-carbon-chat text-5xl opacity-80" />
      <div class="text-base font-semibold text-center leading-tight">Respond</div>
    </div>
  </div>
</div>

<div class="col-start-6 row-start-1 row-span-4 flex flex-col self-stretch pt-3 pb-3">
  <div class="text-xs opacity-0">Act</div>
  <div class="grid flex-1 grid-rows-3 items-center justify-items-center">
    <div class="i-carbon-arrow-right text-3xl opacity-60" />
  </div>
</div>

<div class="col-start-7 row-start-1 row-span-4 z-10 flex w-[9rem] flex-col items-center self-stretch px-3 pt-3 pb-3">
  <div class="text-xs font-semibold uppercase tracking-wide opacity-70">Observe</div>
  <div class="flex flex-1 flex-col items-center justify-center gap-1.5">
    <div class="i-carbon-document text-5xl opacity-80" />
    <div class="text-base font-semibold text-center leading-tight">Prior records</div>
  </div>
</div>

<div class="col-start-8 row-start-1 row-span-4 flex justify-center">
  <div class="i-carbon-arrow-right text-3xl opacity-60" />
</div>

<div class="col-start-9 row-start-1 row-span-4 z-10 flex w-[9rem] flex-col items-center self-stretch px-3 pt-3 pb-3">
  <div class="text-xs font-semibold uppercase tracking-wide opacity-70">Reason (2)</div>
  <div class="flex flex-1 flex-col items-center justify-center gap-1.5">
    <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
    <div class="text-base font-semibold text-center leading-tight">What do I do next?</div>
  </div>
</div>

</div>

<div class="text-center text-lg opacity-85 pt-2">
  The model chooses the path
</div>

</div>

---
layout: default
---

# A simple look

<div class="flex h-[75%] w-full items-stretch justify-center gap-4 px-6">

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3">
  <div class="text-center text-xs font-semibold uppercase tracking-wide opacity-70">Agent</div>
  <div class="flex flex-1 flex-col justify-center gap-2">
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold">LLM</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold">Tools</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold">Context</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold">Planning</div>
  </div>
</div>

<div class="flex w-44 flex-col items-center justify-between py-6">

<div class="flex flex-col items-center gap-1">
  <div class="i-carbon-arrow-left text-4xl opacity-60" />
  <div class="text-sm font-semibold">Percepts</div>
  <div class="text-xs leading-snug text-center opacity-85">messages, tool results, indexes</div>
</div>

<div class="flex flex-col items-center gap-1">
  <div class="i-carbon-arrow-right text-4xl opacity-60" />
  <div class="text-sm font-semibold">Actions</div>
  <div class="text-xs leading-snug text-center opacity-85">tool calls, reply</div>
</div>

</div>

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3">
  <div class="text-center text-xs font-semibold uppercase tracking-wide opacity-70">Environment</div>
  <div class="flex flex-1 flex-col items-center justify-center gap-4">
    <div class="flex flex-col items-center gap-1">
      <div class="i-carbon-user text-4xl opacity-80" />
      <div class="text-sm font-semibold">User</div>
    </div>
    <div class="flex flex-col items-center gap-1">
      <div class="i-carbon-notebook text-4xl opacity-80" />
      <div class="text-sm font-semibold">Records</div>
    </div>
    <div class="flex flex-col items-center gap-1">
      <div class="i-carbon-earth text-4xl opacity-80" />
      <div class="text-sm font-semibold">Web</div>
    </div>
  </div>
</div>

</div>

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 flex flex-col box-border px-4 pt-3 pb-2 gap-1">

# A more realistic look

<img src="/images/slides/aura-architecture.png" alt="AURA system architecture, from the browser through orchestration, services, and infrastructure" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85 text-center">

Ashish Singh, [The LLM Is 5% of Our AI Coding Agent — Here’s the Other 95%](https://engg.glance.com/the-llm-is-5-of-our-ai-coding-agent-heres-the-other-95-a4404aa778cd), *Glance Engineering*, 28 Apr. 2026.

</div>

</div>

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 flex flex-col box-border px-4 pt-3 pb-2 gap-1">

# Seems familiar...

<img src="/images/slides/hidden-technical-debt.png" alt="Only a small box of ML code, surrounded by configuration, data collection, serving, and monitoring" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85 text-center">

Sculley et al. (2015). [Hidden Technical Debt in Machine Learning Systems](https://proceedings.neurips.cc/paper_files/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf). NeurIPS.

</div>

</div>

