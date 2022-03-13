---
title: "Building a Memex"
date: 2021-08-03
dateRange: "Aug '21 to Dec '21"
description: "Building a modern version of the original 'second brain' by synthezing multiple data sources together into a cohesive system to search through my cruft of information."
tags: ["Tinker", "Knowledge Management", "Notes"]
favorite: true
writeup: true
emoji: 🧠
image: "/article_images/memex/memex.png"
# projectLink: "https://github.com/nt92/memex/"
githubLink: "https://github.com/nt92/memex/"
---

[This was originally posted on my newsletter.](https://tinyletter.com/nikhilthota/letters/s02-e05-on-booling-knowledge-management-tooling)

A few weeks ago I came across this tweet from Linus, better known as [@thesephist](https://twitter.com/thesephist):

{{< tweet id=1412956530220093448 user="thesephist" >}}

Over a weekend, Linus collected a bunch of his personal data (blog posts, tweets, journal entries, etc.) into a system that would allow him to search through everything on demand. He essentially built a prototype of Vannevar Bush's memex, which Bush defined as *"a device in which an individual stores all their books, records, and communications to supplement their memory".*

Why is this even useful? The human brain isn't designed to store the vast amounts of information that we create in our modern world. It can approximate this ability to some extent by surfacing thing in associative contexts (going from the word "gray" ⬜️ -> gray dog 🐩 -> your childhood dog sparky 🥺 -> a memory of the time he ate your homework 🧾). However, storing data isn't what the brain is best at — it's best at forming connections from information that it loads into working memory.

This is why I'm so obsessed with knowledge management and can spend hours sorting out my thoughts & learning into the right contexts. The closest thing I've come to having my own memex is my [Roam Research](https://roamresearch.com/) graph, but even that has its limitations. Everything I can find in my Roam is something that I've actively parsed through and taken the time to write down. **What about the vast amounts of memories, experiences, insight, and information that don't get written down?**

This question is what has inspired me to start this next side-project: my own memex, which will serve as what Linus dubs a *"personal search engine".* I'm sure there are services out there that do the job, but I think the value of building my own system outweighs the time commitment. I much prefer that a system that I create has access to the *very* personal data, images, and messages that I hope to feed to it. Some of this data, including my journal entries are some of my most private and cherished possessions, and the last thing I would want is some lame SaaS company to have access to all of this. **I want ownership of my own data.**

So, how am I going to do this? To start, I'll need to figure out exactly what data stores I want to include in this system — here's a non-exhaustive list to get started:

* My Roam Research graph: I back this up twice a day to a private GitHub repo in various formats (including `.json` which I will format all of my data into).
* Google Data: For better or for worse, Google collects data on everything you do in their all-encompassing products (unless you opt out) which you can access and download through [Google Takeout](https://takeout.google.com/). This includes search history, YouTube watch history, Chrome history, location history, among many other things.
* Publicly shared content: This includes all of my [blog posts](https://nikhilthota.com/) and [tweets](https://twitter.com/nikhilthota) mostly.
* Text Messages: As an iPhone user, I can download all of my text & iMessage data into a [SQLite database](https://spin.atomicobject.com/2020/05/22/search-imessage-sql/) — it's a bit technically involved but that's what you get when poking into Apple's fortresses.
* Messenger Data: Most of my Facebook data isn't very useful except for my messaging data, which can easily be accessed and download through the [DYI tool](https://www.facebook.com/dyi/).
* Twitter Likes: This data set has likely some of the highest signal-to-ratio of my consumed information. Unfortunately, the only way to access this is through their [public API](https://developer.twitter.com/en/docs/twitter-api/v1/tweets/post-and-engage/api-reference/get-favorites-list) which isn't meant for this purpose (it can only get you your latest 20 likes).
* Pocket Content: Most of the interesting articles I find on the internet are saved to [Pocket](https://getpocket.com/). It wouldn't make much sense to index every webpage I've come across on the internet, so maybe a curated list of articles that I've actively saved would be more useful.

When building a memex, I see two approaches to solving the problem of sorting & organizing all of your personal data: (1) the *"personal search engine"* approach (which I am moving forward with) and (2) the *"daily dashboard & timeline"* approach. The latter is something that [Andrew Louis](https://hyfen.net/memex) has worked on for a few years now. His system is searchable with a customized query language but isn't a search engine in the purest sense of the term.

With all of this data, I think that context is valuable and that is where I can take a page out of Andrew's system. When did I first write a note, take a picture, or send a message? What was the temperature like that day and what else might have influenced my state of mind? Context is crucial when searching for information on the internet, and even more-so when considering information that you've personally created & consumed. By using this context to inform your thinking, you're building stronger self-awareness into your life and future decisions. In the best world, this turns into a virtuous cycle that further improves your own knowledge graph.

So, what is the most important piece of context to make sure I include? **TIME**. Knowing when I wrote something, liked something, consumed something, or otherwise captured something will be crucial for deriving other data points like items that show up on the same day or other details about what that day was like.

What are the steps to building this?

1. Clean and parse data into uniform `.json` format for all data sources. This will undoubtedly be the hardest and most time-consuming part, since I'll be glueing together various APIs and datasets into something useful. The data is also liable to change without notice, breaking something in the process. And finally, this will also need periodic maintenance so that I can update the data over time until I automate the collect & import process.
2. The next step is to index the data so that it's searchable. [Indexing](https://sibelius.substack.com/p/human-search-engine) simply means creating a uniform data structure around your disparate heaps of data so that you can quickly retrieve and process information.
3. Once we have all of our data in a format that is readable by the machine, we can work on the actual search algorithm. I don't need to reinvent the wheel here and can simply use the best existing [full-text search algorithm](https://en.wikipedia.org/wiki/Full-text_search) This should be able to sort the returned data from a search input through some measure of relevance. This should also be able to return a number of specified items so we can paginate on the UI. Which brings me to...
4. The UI! Once we have a system that has ingested all relevant data and can sort & search through a term given to it, we will need to build a UI that can let the user do it in an intuitive way. I really like how Linus built [Monocle](https://monocle.surge.sh/) and will likely draw a lot of inspiration from his UI once I get this far.

There you have it. This is a project that will take some time to build properly, but is something that has a lot of potential to be expanded in many directions once I get the MVP out (a tool that can search through all my data). Here are some long-term use-cases that I can see myself eventually building out.

* A day context for any given note (what weather was like, what you did, where you went, etc.)
* Day timeline that can give you an overview of what the day was actually like
* Automated habit creation (since you know quantitatively what happened on a given day)
* Twilio integration for auto-tagging certain things that I want to notate (if I choose to) like people I was with, off-hand activities, etc.
* To scale this beyond myself, turn this product into an electron app with data on a local database or personal cloud so that there's minimal data privacy issues