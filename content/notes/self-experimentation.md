---
title: "A Self Experimentation Protocol"
date: 2021-06-04
description: "How I quantitatively measure the effect of a self experiment"
tags: ["Notes", "Health", "Biohacking"]
favorite: true
draft: false
emoji: 🧪
image: "/article_images/self-experimentation/xkcd.png"
---

[This was originally posted on my newsletter.](https://tinyletter.com/nikhilthota/letters/s02-e03-a-prelude-to-tech-bro-summer)

This past month, I've been chowing down on globs of [spirulina](https://examine.com/supplements/spirulina/), [chlorella](https://examine.com/supplements/chlorella/), and other nutritious micro-algae every day. I'm sane I swear — these algae are some of the most dense and bioavailable sources of protein & nutrients available. There is also some [promising research](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6155420/) showing that they might protect the brain and improve metabolic function.

A problem innate to health & nutrition research is that the human body is finicky, and what benefits one person will not necessarily benefit another. This is why I champion personal experimentation through self-administered [n-of-1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3118090/) trials in which you determine for yourself whether a treatment jives with your particular biology. However, even with self-experimentation, it's difficult to extract meaningful insight without a rigorous and well-designed protocol.

So... that's what I'll be discussing in this month's newsletter. Instead of doing what I set out to do (write about my experience using algae) — I decided to zoom out and procrastinate by creating a robust system for myself to aid in self-experimentation.

{{< figure src="/article_images/self-experimentation/xkcd.png" caption="source: [xkcd](https://xkcd.com/974/)" >}}

### Randomized Controlled Trials (RCT)

A well-designed RCT is the gold standard for modern scientific & clinical research. The intent is to reduce bias, balance unknown factors, and isolate the exact variables being measured. **How can we take the best aspects of RCTs and apply them to our own self-experimentation?**

* Randomization is used when assigning subjects to groups to minimize selection & allocation bias. Since I am the only subject, we'll need to be a bit clever here — I'll need to participate in both experiment groups at different times. I can randomize the order in which I'll participate in any group on any given day. This leads us to blinding.
* Blinding is to (1) prevent the subject from knowing what they are being exposed to and (2) prevent the scientist from unconsciously biasing the results. One way to implement blinding is to get a friend to organize & assort everything, but this is self experimentation we're talking about. Again, we'll need to be clever and simulate blinding by making the test and control items look as similar as possible. [Gwern has written a lot on this topic.](https://www.gwern.net/Nootropics#blinding-yourself)
* Isolation of the control variable is next. Since life is complex and it's impossible to perfectly isolate a variable, there will be some leeway we'll have to live with. As much as possible, I will keep my days standard (or make sure the chaotic energy of life is evenly distributed throughout both test & control windows).
* There are two kinds of data to consider when conducting self-experiments.
    * The first is the automagically gathered biometric data from fitness trackers like Oura & Apple Watch or digital usage data from something like RescueTime or Rize.
    * The second is subjective sentiment data collected through reflection e.g. "how is my energy level today from 1 to 10?" which should be specifically tailored to the variable I'm looking to test. This also includes qualitative findings that can inform a broader understanding of the results.
* Once we have the data, we can run simple analyses like regression to map the incidence of control / test to the collected data. Since biometric & well-being data is bounded and inherently thin-tailed, we can assume [Gaussian distribution](https://www.mathsisfun.com/data/standard-normal-distribution.html) and find correlations.

Now that we've got a basic *pseudo-scientific* framework for a self-experimentation protocol, how would we apply this to the aforementioned dinner of delicious algae?

1. Creating a placebo algae will be tough. One option would be to use a kind of algae with no proven health benefits as the control group and a mishmash of "healthy" micro-algae as the test group.
2. The health benefits of algae take roughly ~1 week to kick in, so we can collect data from the ~1 week after this initial loading phase.
3. Thus, I'll need to create a set of test & control algae baggies with 14 globs in each. At the beginning of a 2-week window, I will randomly pick a baggie and take the algae daily until I run out, while collecting data for the latter 7 days.
4. During this data collection period, I'll measure a broad swath of health factors like sleep through Oura, general aerobic and athletic performance through my Apple Watch, level of focus during the day through Rize, and subjective levels of well-being and energy.
5. Finally, I'll run a few regressions to see if there was any statistically significant increase in my measured health factors by eating algae.
Doesn't that sound fun? I think so. 🦠