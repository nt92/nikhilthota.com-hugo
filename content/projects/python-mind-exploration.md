---
title: "Exploring My Mind With Python"
date: 2019-05-25T22:11:22-08:00
dateRange: "Mar '19"
description: "Leveraging automation with Python to send myself my own journal entries daily."
tags: ["Technology", "Code", "Tinker"]
favorite: false
writeup: true
emoji: 🧠
related: []
image: "/article_images/python_1.jpg"
---

{{< figure class="main_image" src="/article_images/python_1.jpg" >}}

A few months ago at a random Chinatown bar in New York City, [Tyler Richards](http://www.tylerjrichards.com/) and I were having a conversation about journaling. I told him that I had over 4 *years* worth of consistent journal entries and Tyler, being the data-minded person he is, gave me an idea to reinforce the lessons and insights from these journaling sessions.

**The Idea**: A system that emails me a random journal entry every day so I could see exactly what was going on in my mind at that given time.

**The Data**: 600+ journal entries with content length ranging from cool 1-liners to 3 pages of word vomit

My journal entries are very free-form and stream-of-consciousness so I’m not totally sure if I’ll end up learning anything useful, but I was curious to find out. The first step? Create a database to hold all of my journal entries.

## 1. Creating the Database

Holding all of my entries in a way that could be easily & efficiently accessed while also providing me the flexibility to add new entries if needed, SQLite was the tool for the job. This [tutorial](https://www.youtube.com/watch?v=pd-0G0MigUA) provides a good introduction to understanding how to create and query a local SQLite database with Python.

{{< gist nt92 e3f48d3532ee9c1496a65e66e44dd1dd >}}

*Simple 6 lines to create a local database in Python*

## 2. Convert my Google Doc files into usable data

The next step was aggregating all of my Google Doc files so that I could go through all of them with a script to extract all entries. Thankfully, I had some semblance of organization with which I separated entries — before each entry, I have a date. Sometimes it’s *mm/dd/yy*, sometimes *dd/mm/yy* if I thought I was cool for being in Europe, but there was always a date.

Once I had all of my files in a folder, I had to figure out how to go through each file and extract every entry. After reading this lovely [post](https://towardsdatascience.com/how-to-extract-data-from-ms-word-documents-using-python-ed3fbb48c122), I decided to go with the [docx](https://python-docx.readthedocs.io/en/latest/) Python library to read each file paragraph-by-paragraph and create a new entry in my database every time I ran into a new date.

{{< gist nt92 3886577b104b5c41e5edbf9de86cf421 >}}

*This shows how I am going through each file and extracting every individual entry based on whether I run into a pattern matching my date formats*

## 3. Send out a random entry every day

The next step was figuring how to send myself an email with an entry that was fetched from the database created earlier. This [guide](https://www.pythonforbeginners.com/code-snippets-source-code/using-python-to-send-email/) went through that process, which is surprisingly easy!

{{< gist nt92 26f5e4a31f738a89f6304f1f17cf77f3 >}}

The final step was scheduling a recurring task that would run this code every morning automatically. Thankfully, Mac has a built-in system for this called [crontab](https://ole.michelsen.dk/blog/schedule-jobs-with-crontab-on-mac-osx.html). *One issue I ran into was that crontab tasks only run when the computer is active. This was fixed by waking my laptop a minute before the 10am slot when the job was scheduled to run, detailed [here](https://superuser.com/questions/14836/crontab-to-wake-osx-from-sleep).*

---

All in all, I learned how to work with local SQLite databases, use Python to leverage data, and schedule recurring tasks on Mac. **Cool**. So what now? I’m going to spend the next couple of months reading a random journal entry daily while traveling to see if I can glean any unique insights from my ramblings.

See you on the other side and stay tuned for my analysis 🤙🏽

My full code can be found [here](https://github.com/nt92/Journal-Emailer).
