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
#### Prepared for Wheaton College: COMP 255
##### Ben Batorsky

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

# LLMs as we know them

<div class="flex h-[75%] w-full items-center justify-center gap-3 px-2 text-sm">

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-book text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Corpus</div>
  <div class="text-xs leading-snug text-center opacity-85">trillions of tokens</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Pre-trained LLM</div>
  <div class="text-xs leading-snug text-center opacity-85">next-token prediction</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-user-favorite text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Instruction-tuning</div>
  <div class="text-xs leading-snug text-center opacity-85">align with human preference</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Post-trained LLM</div>
  <div class="text-xs leading-snug text-center opacity-85">useful answers</div>
</div>

</div>

---
layout: default
---

# Workflow building blocks

<div class="flex h-[75%] w-full items-center justify-center gap-3 px-2 text-sm">

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">LLM</div>
</div>

<div class="text-2xl font-semibold opacity-70 shrink-0">+</div>

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-tool-kit text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Tools</div>
  <div class="text-xs leading-snug text-center opacity-85"> external functions</div>
</div>

<div class="text-2xl font-semibold opacity-70 shrink-0">+</div>

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-data-base text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Memory</div>
  <div class="text-xs leading-snug text-center opacity-85">append + retrieve context</div>
</div>

<div class="text-2xl font-semibold opacity-70 shrink-0">+</div>

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-list-numbered text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Steps</div>
  <div class="text-xs leading-snug text-center opacity-85">fixed sequence</div>
</div>

<div class="text-2xl font-semibold opacity-70 shrink-0">=</div>

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-flow text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Workflow</div>
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

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right max-w-[55%]">

Adapted from [What is an AI agent?](https://www.langchain.com/blog/what-is-an-agent)

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# Sloppy language: A model is not an agent

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

# A workflow is not an agent

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
---

# Agent components: Context

<div class="flex h-[75%] w-full items-stretch justify-center gap-4 px-6">

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3">
  <div class="text-center text-xs font-semibold uppercase tracking-wide opacity-70">Agent</div>
  <div class="flex flex-1 flex-col justify-center gap-2">
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">LLM</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">Tools</div>
    <div class="rounded border-2 border-current px-2 py-1.5 text-center text-sm font-semibold ring-2 ring-current/30">Context</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">Planning</div>
  </div>
</div>

<div class="flex w-44 flex-col items-center justify-between py-6 opacity-35">

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

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3 opacity-35">
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

# Agent components: Planning

<div class="flex h-[75%] w-full items-stretch justify-center gap-4 px-6">

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3">
  <div class="text-center text-xs font-semibold uppercase tracking-wide opacity-70">Agent</div>
  <div class="flex flex-1 flex-col justify-center gap-2">
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">LLM</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">Tools</div>
    <div class="rounded border px-2 py-1.5 text-center text-sm font-semibold opacity-35">Context</div>
    <div class="rounded border-2 border-current px-2 py-1.5 text-center text-sm font-semibold ring-2 ring-current/30">Planning</div>
  </div>
</div>

<div class="flex w-44 flex-col items-center justify-between py-6 opacity-35">

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

<div class="flex w-56 flex-col rounded border px-4 pt-3 pb-3 opacity-35">
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

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 flex flex-col box-border px-4 pt-3 pb-2 gap-1">

# Everything is not an agent

<img src="/images/slides/salesforce-proactive-agents.png" alt="Applications and data emit events; agents observe and outreach to customers or notify employees" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85 text-center">

[Agentic Patterns and Implementation with Agentforce](https://architect.salesforce.com/docs/architect/fundamentals/guide/agentic-patterns.html#11-conversational-agents), Salesforce Architects.

</div>

</div>

---
layout: two-cols-header
class: !overflow-hidden
layoutClass: gap-4
---

# Everything shouldn't be an agent

::left::

## Accuracy issues

<div class="flex min-h-0 flex-1 flex-col items-center justify-center">

<img src="/images/slides/lecun-token-sequences.png" alt="Tree of all possible token sequences with a narrow slice of correct answers" class="max-h-[36vh] w-auto max-w-full object-contain" />

</div>

::right::

## Latency issues

<div class="flex h-full items-center text-[0.85rem] leading-snug">

```text
agent    run 1: 10.86s  ->  The records contain diagnoses of common cold and migraine.
agent    run 2: 14.31s  ->  Diagnoses on file include a common cold and a migraine.
agent    run 3: 17.85s  ->  Records on file include diagnoses of common cold and migraine, plus one entry noting sore throat and fever without a specified diagnosis.

workflow run 1: 5.59s  ->  The on-file diagnoses are common cold and migraine.
workflow run 2: 10.65s  ->  Diagnoses on file include common cold and migraine.
workflow run 3: 8.09s  ->  The diagnoses on file are common cold and migraine.

agent mean:    14.34s
workflow mean: 8.11s
```

</div>

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right max-w-[55%]">

Yann LeCun (2023). [Santa Fe Institute lecture](https://drive.google.com/file/d/1RFxtgLv0q_tKmfzxWG0IOAL8Bre4Id6B/view).

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# Everything *really* shouldn't be an agent

::left::

|  | **Failure modes** |
| --- | --- |
| **Code** | validation, logic bugs, API errors |
| **Workflow** | + bad step outputs, brittle handoffs |
| **Agent** | + wrong tools, scope violations, runaway loops |
| **Chat bot** | + ...many |

::right::

<div class="flex h-full flex-col items-center justify-center gap-2">

<img src="/images/slides/mcdonalds-linked-list.png" alt="McDonald's support bot answering a linked-list coding question, then offering McNuggets" class="max-h-[48vh] w-auto max-w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85 text-center">

[Matt Paige](https://x.com/MattPaige32/status/2046247602266546462/photo/1), X, 20 Apr. 2026.

</div>

</div>

---
layout: default
---

# Evaluation is *key*

| | **Example failure mode** | **Metric** | **Benchmark** |
| --- | --- | --- | --- |
| **Code** | Validation | Unit test pass rate | pytest suite |
| **Workflow** | Hallucinated output | Faithfulness | WikiEval |
| **Agent** | Wrong tools | Planning score | T-Eval |

---
layout: two-cols-header
layoutClass: gap-4
---

# Thank you!

::left::

## Key papers

- [Original Transformer paper](https://arxiv.org/abs/1706.03762) (Vaswani et al., 2017)
- [InstructGPT - precursor to GPT-3](https://arxiv.org/abs/2203.02155) (Ouyang et al., 2022)
- [Chain of thought prompting](https://arxiv.org/pdf/2205.11916) (Kojima et al., 2022)
- [ReAct Framework](https://arxiv.org/abs/2210.03629) (Yao et al., 2023)
- [MemGPT - memory-augmented LLMs](https://arxiv.org/abs/2310.08560) (Packer et al., 2023)
- [SWE-agent - full engineering agent](https://arxiv.org/abs/2405.15793) (Yang et al., 2024)
- [DeepSeek-R1 - reasoning (where a lot of this lives now)](https://arxiv.org/abs/2501.12948) (DeepSeek-AI, 2025)

::right::

## Literature / Blogs

- [DAIR ML Papers of the Week](https://github.com/dair-ai/ML-Papers-of-the-Week)
- [Sebastian Raschka](https://magazine.sebastianraschka.com/)
- [Lilian Weng](https://lilianweng.github.io/)

## Benchmarks

- [Taubench](https://taubench.com/) — AI agent evaluation
- [RAGAS](https://docs.ragas.io/en/stable/) — RAG evaluation suite
