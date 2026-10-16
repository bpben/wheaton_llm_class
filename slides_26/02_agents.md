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
### Prepared for \<class name\>
#### Ben Batorsky

</div>

<div class="flex h-full min-h-0 min-w-0 items-center justify-center">

<img src="/images/slides/strange.gif" alt="" class="max-h-[85vh] w-full object-contain" />

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
layout: default
---

# "Agents" in Reinforcement Learning

<div class="flex items-center justify-center pt-2">

<img src="/images/slides/rl-agent-environment.png" alt="Reinforcement learning agent–environment loop: state, action, reward" class="max-h-[55vh] w-auto max-w-full object-contain" />

</div>

