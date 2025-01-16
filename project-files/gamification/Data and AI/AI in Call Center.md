---
layout: default
title:  "AI Service in Call Center"
category: "Gamification1"
sub-category: "Data and AI"
courses: [AI-102]
---

# Multilingual Customer Support

## Introduction:

This is a dialog between Hiroshi and Amanda. Amanda works for a call center that handles customer inquiries from around the world. To provide efficient and personalized support, they leverage AI services.<br>
**Situation:** A customer from Japan calls the support line to inquire about a recent order. The customer speaks only Japanese, while the available support agent speaks only English.

## Task 1: Listen to the conversation between Hiroshi and Amanda

<a href="./images/cc.png">
  <img src="./images/cc.png" alt="Amanda talking to Hiroshi over the phone">
</a>
<br>
<audio controls>
  <source src=" /iengage/project-files/gamification/Data and AI/videos/callcenter.m4a" type="audio/mpeg"> 
  Your browser does not support the audio element.
</audio>

**Question 1** Which AI service enabled Amanda to respond to Hiroshi, even though she didn't speak Japanese?

 <div class="button-container">
    <button id="a1">Detect Language</button>
    <button id="a2" onclick="markCorrect()">Speech Translation</button>
    <button id="a3">Translate Service</button>
</div>
<p id="result"></p>

## Task 2: Observe the below image where Amanda is chatting with a Japanese customer <br>

<a href="./images/cc2.png">
  <img src="./images/cc2.png" alt="Amanda talking to Hiroshi over the chat">
</a>
<br>

**Question 2** Which service helps with the translation here?
 <div class="button-container">
    <button id="a21">Detect Language</button>
    <button id="a22">Speech Translation</button>
    <button id="a23" onclick="markCorrect1()">Translate Service</button>
</div>
<p id="result1"></p>

<style>
    .button-container {
        display: flex;
        gap: 10px;
    }
    .correct {
        background-color: green;
        color: white;
    }
</style>
<script>
   function markCorrect(isCorrect) {
        const button2 = document.getElementById('a2');
        if (isCorrect) {
            button2.classList.add('correct');
            document.getElementById('result').innerText = 'Correct Answer';
        } else {
            document.getElementById('result').innerText = 'Incorrect choice';
        }
    }

    function markCorrect1(isCorrect) {
        const button3 = document.getElementById('a23');
        if (isCorrect) {
            button3.classList.add('correct');
            document.getElementById('result1').innerText = 'Correct Answer';
        } else {
            document.getElementById('result1').innerText = 'Incorrect choice';
        }
    }
</script>
