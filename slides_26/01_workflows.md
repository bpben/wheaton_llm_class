---
theme: default
title: LLM Workflows - Wheaton 2026
css: style.css
info: |
  LLM Workflows - Wheaton 2026 talk deck
---

<div class="grid h-full w-full min-h-0 grid-cols-[minmax(0,38%)_minmax(0,62%)] items-center gap-6">

<div class="min-w-0">

# LLM Workflows
### Prepared for Wheaton College: COMP 255
#### Ben Batorsky

</div>

<div class="flex h-full min-h-0 min-w-0 items-center justify-center gap-4">

<div class="i-carbon-user text-7xl opacity-80 shrink-0" />
<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
<div class="i-carbon-machine-learning-model text-7xl opacity-80 shrink-0" />
<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
<div class="i-carbon-search text-7xl opacity-80 shrink-0" />
<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
<div class="i-carbon-chat text-7xl opacity-80 shrink-0" />

</div>

</div>

<div class="absolute bottom-2 left-0 right-0 text-center text-[10px] opacity-70">
  AI coding assistance was used in developing these materials
</div>

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 flex flex-col box-border px-6 py-4 gap-2">

<img src="/images/slides/gartner-hype-cycle.png" alt="Gartner Hype Cycle" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85 text-center">

John Werner, [“The Trough Of Disillusionment And Four Outliers On The Gartner Hype Cycle”](https://www.forbes.com/sites/johnwerner/2024/07/18/the-trough-of-disillusionment-and-four-outliers-on-the-gartner-hype-cycle/), *Forbes*, 18 Jul. 2024.

</div>

</div>

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 grid grid-cols-[minmax(0,38%)_minmax(0,62%)] gap-2 box-border px-6 py-4">

<div class="min-h-0 flex flex-col justify-center items-center gap-4 pr-2 relative z-10">

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center">

<div class="text-[0.55em] font-semibold tracking-[0.12em] uppercase opacity-70">Forbes</div>

<div class="text-[1.05em] font-bold leading-tight">Will AI Replace Teachers?</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">Sarah Hernholm · 17 May 2026</div>

</div>

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center font-serif">

<div class="text-[0.55em] italic opacity-70">The New York Times</div>

<div class="text-[1.05em] font-bold leading-tight tracking-tight">A.I. Chatbots Defeated Doctors at Diagnosing Illness</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">By Gina Kolata · Nov. 17, 2024</div>

</div>

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center">

<div class="text-[0.55em] font-bold tracking-[0.14em] uppercase opacity-70">Reuters</div>

<div class="text-[1.05em] font-bold leading-tight">Artificial Intelligence is now an A+ law student, study finds</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">By Karen Sloan · June 5, 2025</div>

</div>

</div>

<div class="min-h-0 flex flex-col gap-2 relative z-10">

<img src="/images/slides/gartner-hype-cycle.png" alt="Gartner Hype Cycle" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85">

John Werner, [“The Trough Of Disillusionment And Four Outliers On The Gartner Hype Cycle”](https://www.forbes.com/sites/johnwerner/2024/07/18/the-trough-of-disillusionment-and-four-outliers-on-the-gartner-hype-cycle/), *Forbes*, 18 Jul. 2024.

</div>

</div>

</div>

<!-- Fat up-arrow at the peak: tweak left/top % if needed -->
<svg class="absolute z-20 pointer-events-none" style="left: 54%; top: 30%; width: 2.5rem; height: 3.25rem;" viewBox="0 0 40 56" aria-hidden="true">
  <path d="M14 56 H26 V28 H36 L20 4 L4 28 H14 Z" fill="#c41e3a" />
</svg>

---
layout: default
class: h-full !p-0
---

<div class="absolute inset-0 grid grid-cols-[minmax(0,38%)_minmax(0,62%)] gap-2 box-border px-6 py-4">

<div class="min-h-0 flex flex-col justify-center items-center gap-4 pr-2 relative z-10">

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center">

<div class="text-[0.55em] font-bold tracking-[0.14em] uppercase opacity-70">Reuters</div>

<div class="text-[1.05em] font-bold leading-tight">OpenAI's rogue agents probed Hugging Face for weaknesses two months before major hack</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">By Raphael Satter and Deepa Seetharaman · Sept. 16, 2026</div>

</div>

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center">

<div class="text-[0.55em] font-semibold tracking-[0.08em] uppercase opacity-70">MarketScale</div>

<div class="text-[1.05em] font-bold leading-tight">Survey: AI Boosts Productivity, but Few Firms See Profit Impact</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">By MarketScale Newsroom · Sept. 13, 2026</div>

</div>

<div class="shrink-0 flex flex-col justify-center gap-0.5 leading-none text-center">

<div class="text-[0.55em] font-bold tracking-[0.14em] uppercase opacity-70">Reuters</div>

<div class="text-[1.05em] font-bold leading-tight">Mark Zuckerberg had a bold plan to replace Meta staff with AI. Here's how it imploded.</div>

<div class="text-[0.55em] leading-tight opacity-80 pt-0.5">By Katie Paul · Aug. 26, 2026</div>

</div>

</div>

<div class="min-h-0 flex flex-col gap-2 relative z-10">

<img src="/images/slides/gartner-hype-cycle.png" alt="Gartner Hype Cycle" class="min-h-0 flex-1 w-full object-contain" />

<div class="shrink-0 text-[10px] leading-snug opacity-85">

John Werner, [“The Trough Of Disillusionment And Four Outliers On The Gartner Hype Cycle”](https://www.forbes.com/sites/johnwerner/2024/07/18/the-trough-of-disillusionment-and-four-outliers-on-the-gartner-hype-cycle/), *Forbes*, 18 Jul. 2024.

</div>

</div>

</div>

<!-- Fat down-arrow at the peak: tweak left/top % if needed -->
<svg class="absolute z-20 pointer-events-none" style="left: 62%; top: 44%; width: 2.5rem; height: 3.25rem;" viewBox="0 0 40 56" aria-hidden="true">
  <path d="M14 0 H26 V28 H36 L20 52 L4 28 H14 Z" fill="#c41e3a" />
</svg>

---
layout: center
class: text-4xl
---

# Large Language Model (LLM)

---
layout: center
class: text-4xl
---

# Large <mark>Language Model</mark> (LLM)

---
layout: default
---

# "Statistical" Language Model

<div class="flex h-[75%] w-full items-center justify-center gap-5 px-2">

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-book text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Text Corpus</div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-calculator text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Counter</div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<img src="/images/slides/bigram-counts.png" alt="Bigram counts table from Berkeley Restaurant Project corpus" class="max-h-[55vh] w-auto max-w-[48%] object-contain shrink-0" />

</div>

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right max-w-[55%]">

N-gram Language Models — [Jurafsky, D., & Martin, J. H. *Speech and Language Processing*](https://web.stanford.edu/~jurafsky/slp3/3.pdf)

</div>

---
layout: default
---

# Text generation with LMs

<div class="flex h-[75%] w-full items-center justify-center gap-6 px-2">

<div class="text-3xl font-semibold shrink-0">I want to eat ___</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<img src="/images/slides/p-w-given-eat.png" alt="Conditional probability P(w | eat) bar chart" class="max-h-[55vh] w-auto max-w-[55%] object-contain shrink-0" />

</div>

---
layout: default
---

# Training Neural Language Models

<div class="flex h-[75%] w-full items-center justify-center gap-4 px-2">

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[14rem]">
  <div class="i-carbon-book text-5xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Corpus</div>
  <div class="text-sm leading-relaxed text-left space-y-0.5 px-2 py-1.5 rounded" style="background:#fff;color:#000">
    <div class="font-semibold">I want to eat ____</div>
  </div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-machine-learning-model text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Neural Network (NN)</div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="text-2xl font-semibold leading-tight">Predict next word</div>
</div>

<div class="flex flex-col justify-center gap-6 shrink-0">
  <div class="flex items-center gap-3">
    <div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
    <div class="flex items-center gap-1 min-w-[7rem]">
      <div class="text-2xl font-semibold">lunch</div>
      <div class="i-carbon-checkmark-filled text-3xl text-green-600" />
    </div>
    <div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
  </div>
  <div class="flex items-center gap-3">
    <div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
    <div class="flex items-center gap-1 min-w-[7rem]">
      <div class="text-2xl font-semibold">spend</div>
      <div class="i-carbon-close-filled text-3xl text-red-600" />
    </div>
    <div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />
  </div>
</div>

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-machine-learning-model text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Trained NN</div>
</div>

</div>

---
layout: center
class: text-4xl
---

# Large <mark>Language Model</mark> (LLM)

<div class="absolute left-0 right-0 top-[58%] px-8 text-2xl font-semibold text-center leading-snug">
  A model that predicts the next word given context.
</div>

---
layout: center
class: text-4xl
---

# <mark>Large</mark> Language Model (LLM)

---
layout: two-cols-header
layoutClass: gap-4
---

# What is Large?

::left::

<div class="text-center">

## Language Model

</div>

<div class="flex items-center justify-center gap-4 pt-4">

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-book text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Corpus</div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-machine-learning-model text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Trained LM</div>
</div>

</div>

::right::

---
layout: two-cols-header
layoutClass: gap-4
---

# <span class="underline">Large</span> Language Model

::left::

<div class="flex flex-col items-center">

<div class="text-center">

## Language Model

</div>

<div class="flex items-center justify-center gap-4 pt-4">

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-book text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Corpus</div>
</div>

<div class="i-carbon-arrow-right text-4xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-machine-learning-model text-6xl opacity-80" />
  <div class="text-lg font-semibold text-center leading-tight">Trained LM</div>
</div>

</div>

<div class="text-sm leading-relaxed pt-3 text-center">
  <div>Text: Billions</div>
  <div>Parameters: Millions</div>
</div>

</div>

::right::

<div class="flex flex-col items-center">

<div class="text-center">

## LLM

</div>

<div class="flex items-center justify-center gap-6 pt-4">

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-book text-9xl opacity-80" />
  <div class="text-2xl font-semibold text-center leading-tight">Corpus</div>
</div>

<div class="i-carbon-arrow-right text-6xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-2 shrink-0">
  <div class="i-carbon-machine-learning-model text-9xl opacity-80" />
  <div class="text-2xl font-semibold text-center leading-tight">Trained LM</div>
</div>

</div>

<div class="text-sm leading-relaxed pt-3 text-center">
  <div>Text: Trillions</div>
  <div>Parameters: Trillions</div>
</div>

</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# <span class="underline">Why</span> is Large?

::left::

## In-context learning

<img src="/images/slides/in-context-learning.png" alt="In-context learning ChatGPT examples" class="block max-h-[40vh] w-auto max-w-full object-contain mx-auto" />

::right::

## Reasoning

<img src="/images/slides/reasoning-scale.png" alt="Larger model correctly solves multi-step reasoning problem" class="block max-h-[40vh] w-auto max-w-full object-contain mx-auto" />

<div class="text-[10px] leading-snug opacity-85 pt-2 text-center">

[Characterizing Emergent Phenomena in Large Language Models – Google AI Blog](https://research.google/blog/characterizing-emergent-phenomena-in-large-language-models/)

</div>

---
layout: center
---

# Notebook: Pre-trained models

---
layout: default
---

# It's cute, but... (GPT-2, 2020)

<div class="flex items-center justify-center h-[70%]">

<img src="/images/slides/write-with-transformer.png" alt="Write With Transformer completion example" class="max-h-[55vh] w-auto max-w-full object-contain" />

</div>

---
layout: default
---

<div class="grid h-[85%] w-full grid-cols-2 gap-8 px-4 pt-2">

<div class="flex min-h-0 flex-col">

## Pre-training

<div class="flex flex-1 items-center justify-center gap-2 text-sm">

<div class="flex flex-col items-center gap-0.5">
  <div class="i-carbon-book text-3xl opacity-80" />
  <div class="text-sm font-semibold leading-tight text-center">Corpus</div>
</div>

<div class="i-carbon-arrow-right text-2xl opacity-60" />

<div class="flex flex-col items-center gap-0.5">
  <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
  <div class="text-sm font-semibold leading-tight text-center">Language Model</div>
</div>

<div class="i-carbon-arrow-right text-2xl opacity-60" />

<div class="flex flex-col items-center gap-0.5">
  <div class="text-sm font-semibold leading-tight text-center">Predict<br/>next word</div>
</div>

<div class="i-carbon-arrow-right text-2xl opacity-60" />

<div class="flex flex-col items-center gap-0.5">
  <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
  <div class="text-sm font-semibold leading-tight text-center">Pre-trained LM</div>
</div>

</div>

</div>

<div class="flex min-h-0 flex-col">

## Post-training

<div class="flex flex-1 flex-col items-center justify-center gap-6 text-sm">

<div class="flex flex-col items-center gap-2">
  <div class="text-xs font-semibold uppercase tracking-wide opacity-70">Supervised Fine-tuning (SFT)</div>
  <div class="flex items-center gap-2">
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-book text-3xl opacity-80" />
      <div class="text-sm font-semibold leading-tight text-center">Instruction–response<br/>Corpus</div>
    </div>
    <div class="i-carbon-arrow-right text-2xl opacity-60" />
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
      <div class="text-sm font-semibold leading-tight text-center">Pre-trained LM</div>
    </div>
    <div class="i-carbon-arrow-right text-2xl opacity-60" />
    <div class="flex flex-col items-center gap-0.5">
      <div class="text-sm font-semibold leading-tight text-center">Predict<br/>response</div>
    </div>
    <div class="i-carbon-arrow-right text-2xl opacity-60" />
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
      <div class="text-sm font-semibold leading-tight text-center">SFT model</div>
    </div>
  </div>
</div>

<div class="flex flex-col items-center gap-2">
  <div class="text-xs font-semibold uppercase tracking-wide opacity-70">Alignment with human feedback</div>
  <div class="flex items-center gap-2">
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
      <div class="text-sm font-semibold leading-tight text-center">SFT model</div>
    </div>
    <div class="i-carbon-arrow-right text-2xl opacity-60" />
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-user-favorite text-3xl opacity-80" />
      <div class="text-xs leading-snug text-center opacity-85">human preferences</div>
    </div>
    <div class="i-carbon-arrow-right text-2xl opacity-60" />
    <div class="flex flex-col items-center gap-0.5">
      <div class="i-carbon-machine-learning-model text-3xl opacity-80" />
      <div class="text-sm font-semibold leading-tight text-center">Post-trained model</div>
    </div>
  </div>
</div>

</div>

</div>

</div>

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right">

More info on alignment tuning via [Reinforcement Learning from Human Feedback](https://arxiv.org/abs/2203.02155) (see appendix)

</div>

---
layout: center
---

# Notebook: Post-trained models

---
layout: center
class: text-4xl
---

# Large Language Models

<div class="absolute left-0 right-0 top-[58%] px-8 text-2xl font-semibold text-center leading-snug">
  <u>Typically</u> refers to models that generate useful responses to inputs.
</div>

---
layout: two-cols-header
layoutClass: gap-4
---

# LLM Workflows

::left::

<div class="flex h-full items-center">

<div class="text-lg leading-relaxed">
  <span class="font-semibold">Anthropic:</span> Systems where LLMs and tools are orchestrated through predefined code paths.

  Requires:
  - "State"
  - Tools
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
<div class="flex justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>
<div class="flex justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>

<div class="font-semibold text-base pr-2">Workflow</div>
<div class="flex justify-center"><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
<div class="flex justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>
<div class="flex justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>

</div>

</div>

</div>

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right max-w-[55%]">

Adapted from [Building effective agents](https://www.anthropic.com/research/building-effective-agents), Anthropic; table from [What is an AI agent?](https://www.langchain.com/blog/what-is-an-agent)

</div>

---
layout: center
---

# Notebook: State as conversation history

---
layout: default
---

# ChatGPT never forgets!

<div class="flex items-center justify-center pt-2">

<img src="/images/slides/chatgpt-never-forgets.png" alt="ChatGPT recalling conversation from a month earlier" class="max-h-[55vh] w-auto max-w-full object-contain" />

</div>

---
layout: default
---

# ChatGPT-style memory

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/chatgpt-memory-architecture.png" alt="ChatGPT memory architecture with Redis vector store" class="max-h-[50vh] w-auto max-w-full object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

[Introducing the ChatGPT Memory Project – Redis](https://redis.com/blog/chatgpt-memory-project/)

</div>

</div>

---
layout: default
---

# Tools

<div class="flex h-[75%] w-full items-center justify-center gap-4 px-2 text-sm">

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="i-carbon-string-text text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Text</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">LLM</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="text-5xl font-semibold opacity-70 leading-none">?</div>
</div>

</div>

---
layout: default
---

# Tools

<div class="flex h-[75%] w-full flex-col items-center justify-center gap-8 px-2 text-sm">

<div class="flex items-center justify-center gap-4">

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="i-carbon-string-text text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Text</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">LLM</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0">
  <div class="i-carbon-string-text text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Text</div>
</div>

</div>

<div class="text-2xl font-semibold text-center">
  So how does an LLM use tools?
</div>

</div>

---
layout: center
---

# Notebook: Tools

---
layout: default
---

# MCP: Connecting an LLM to an event website

<div class="flex flex-col items-center justify-center gap-2">

<div class="text-center text-lg font-semibold">
  User: “What events are happening in Boston this weekend?”
</div>

<div class="flex justify-center w-full">

```mermaid {scale: 0.72}
sequenceDiagram
    participant L as LLM
    participant C as MCP Client
    participant S as Events MCP Server

    Note over C,S: 1. Discover available tools
    C->>S: tools/list
    S-->>C: search_events, get_event_details

    Note over L,C: 2. Select a tool
    L->>C: Use search_events

    Note over C,S: 3. Call the tool
    C->>S: tools/call search_events<br/>{ city: "Boston", date: "this weekend" }
    S-->>C: Jazz festival, food fair, art walk
    C-->>L: Process tool result

    Note over L: 4. Generate a useful answer
```

</div>

</div>

<div class="absolute bottom-2 right-4 text-[10px] leading-snug opacity-85 text-right max-w-[55%]">

Adapted from [Model Context Protocol — Tools](https://modelcontextprotocol.io/specification/2025-06-18/server/tools)

</div>

---
layout: default
---

# Healthbot Workflow

<div class="flex h-[78%] w-full items-center justify-center px-2 text-sm">
<div class="flex items-start justify-center gap-2">
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[8.5rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-user text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Patient</div>
  <div class="text-xs leading-snug text-center opacity-85">“I'm feeling not good today, I am coughing and sneezing”</div>
</div>
<div class="flex h-14 shrink-0 items-center"><div class="i-carbon-arrow-right text-3xl opacity-60" /></div>
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Parse symptoms</div>
</div>
<div class="flex h-14 shrink-0 items-center"><div class="i-carbon-arrow-right text-3xl opacity-60" /></div>
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-search text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Web search</div>
  <div class="text-xs leading-snug text-center opacity-85">tool call</div>
</div>
<div class="flex h-14 shrink-0 items-center"><div class="i-carbon-arrow-right text-3xl opacity-60" /></div>
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-machine-learning-model text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Diagnose</div>
</div>
<div class="flex h-14 shrink-0 items-center"><div class="i-carbon-arrow-right text-3xl opacity-60" /></div>
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-data-structured text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Save record</div>
</div>
<div class="flex h-14 shrink-0 items-center"><div class="i-carbon-arrow-right text-3xl opacity-60" /></div>
<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[6.5rem]">
  <div class="flex h-14 items-center justify-center"><div class="i-carbon-chat text-5xl opacity-80" /></div>
  <div class="text-base font-semibold text-center leading-tight">Respond</div>
</div>
</div>
</div>

---
layout: center
---

# Notebook: Healthbot Workflow

---
layout: default
---

# Conclusion

<div class="flex h-[78%] w-full flex-col items-center justify-center gap-5 px-3 text-sm">

<div class="w-full rounded-lg border-2 px-4 pt-2 pb-3" style="border-color:#0f766e; background:rgba(15,118,110,0.06)">
<div class="text-sm font-semibold tracking-wide pb-2" style="color:#0f766e">LLM</div>
<div class="flex w-full items-center justify-center gap-3">

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

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[9rem]">
  <div class="flex items-center gap-2">
    <div class="i-carbon-book text-5xl opacity-80" />
    <div class="i-carbon-user-favorite text-5xl opacity-80" />
  </div>
  <div class="text-base font-semibold text-center leading-tight">Post-training</div>
  <div class="text-xs leading-snug text-center opacity-85">align with human preference</div>
</div>

<div class="i-carbon-arrow-right text-3xl opacity-60 shrink-0" />

<div class="flex flex-col items-center gap-1.5 shrink-0 max-w-[7.5rem]">
  <div class="i-carbon-machine-learning-model text-5xl opacity-80" />
  <div class="text-base font-semibold text-center leading-tight">Post-trained LLM</div>
  <div class="text-xs leading-snug text-center opacity-85">useful answers</div>
</div>

</div>
</div>

<div class="w-full rounded-lg border-2 px-4 pt-2 pb-3" style="border-color:#b45309; background:rgba(180,83,9,0.06)">
<div class="text-sm font-semibold tracking-wide pb-2" style="color:#b45309">LLM workflow</div>
<div class="flex w-full items-center justify-center gap-3">

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
</div>

</div>

---
layout: center
---

# Appendix

---
layout: default
routeAlias: rlhf
---

# Reinforcement Learning from Human Feedback (RLHF, 2022)

<div class="flex flex-col items-center justify-center gap-2 pt-2">

<img src="/images/slides/instructgpt-rlhf.png" alt="InstructGPT RLHF Steps 2 and 3" class="max-h-[42vh] w-auto max-w-[95%] object-contain" />

<div class="text-[10px] leading-snug opacity-85 text-center">

[\[2203.02155\] Training language models to follow instructions with human feedback](https://arxiv.org/abs/2203.02155)

</div>

</div>
