---
title: "BrowserBot"
date: 2023-01-21
dateRange: "January 2023"
description: "Built at Scale's Generative AI hackathon — an action transformer for automating common tasks through a browser"
tags: ["Tinker", "AI", "Code", "Technology"]
favorite: true
writeup: true
emoji: 🤖
image: "/article_images/browser-bot/browserbot-page.png"
githubLink: "https://github.com/huyouare/bouncer"
---

{{< figure caption="h/t [karpathy](https://github.com/karpathy/minGPT/)" src="/article_images/browser-bot/browserbot-branding.png" >}}

## What is this?

This is a fun project that I worked on with some folks at Scale's Generative AI hackathon. The intention was to build a lightweight "action transformer" that could help automate simple and repetitive tasks to the user by leveraging the power of LLMs.  

From our official GitHub repo:

> Our project is a grounded action transformer that uses language models to decompose complex tasks into simple instructions. We were inspired by recent developments in action transformers and action generation, but noticed a lack of open-source options. We chose to use natural language as the medium for communicating tasks to the model. Our website is built using Node.js, Puppeteer, Express, and a vanilla frontend. We use GPT-3/OpenAI API for our prompts. We are proud of the ability for our product to work out of the box for a limited set of tasks and look forward to the potential for community-created tasks to expand the set of actions.

{{< video src="/article_images/browser-bot/browserbot-demo.mov" >}}

^ Here's a demo — view it in fullscreen on your browser, my monitor is WAY to huge but I love it.

We essentially created a set of low-level instructions that we "trained" a model on through prompt engineering and taught GPT to generate these instructions for itself, given a high-level task. We then used Puppeteer to execute these instructions in the browser once these tasks were handled individually by GPT itself or custom-built adapters.

{{< figure src="/article_images/browser-bot/browserbot-architecture.jpeg" >}}
