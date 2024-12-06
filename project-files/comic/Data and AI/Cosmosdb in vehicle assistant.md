---
layout: default
title:  " Cosmos DB in Vehicle Assistants"
category: "Comic"
sub-category: "Data and AI"
courses: [DP-203,AZ-305]
---

# Enabling AI and Data Services in Vehicle Assistants

## Introduction
In this engaging comic, we explore the fascinating world of vehicle assistance powered by Azure Cosmos DB and AI. Follow the journey of Alex, a software engineer, Sam, an architect, and Alic, a project manager, as they delve into the capabilities of Cosmos DB. Through their adventure, you'll discover how this powerful database service enhances vehicle assistance systems by providing real-time data processing, seamless scalability, and robust performance. Whether it's optimizing route planning, managing vehicle diagnostics, or ensuring driver safety, Cosmos DB proves to be an invaluable tool in revolutionizing the automotive industry. Join Alex and Sam as they uncover the secrets behind Cosmos DB's success in transforming vehicle assistance into a smarter, more efficient experience.

<a href="./images/cosmos1.jpg" download>
  <img src="./images/cosmos1.jpg" alt="Cosmos DB in Vehicle Assistants">
</a>

## Knowledge Check

Which of the following statements about Azure Cosmos DB's global distribution capabilities is TRUE?

<form id="quizForm">
  <input type="radio" id="q1" name="answer" value="q1">
  <label for="paris">Azure Cosmos DB can only replicate data to a maximum of three regions.</label><br>
  <input type="radio" id="q2" name="answer" value="q2">
  <label for="london">Azure Cosmos DB automatically handles failover and failback during regional outages.</label><br>
  <input type="radio" id="q3" name="answer" value="q3">
  <label for="berlin">Azure Cosmos DB requires manual intervention to replicate data across regions.</label><br>
  <input type="radio" id="q4" name="answer" value="q4">
  <label for="madrid">Azure Cosmos DB does not support multi-region writes.</label><br>
  <button type="button" onclick="checkAnswer()" class="styled-button">Submit</button>
</form>

<p id="result"></p>

<script>
  function checkAnswer() {
    var radios = document.getElementsByName('answer');
    var correctAnswer = 'Azure Cosmos DB automatically handles failover and failback during regional outages.';
    var result = document.getElementById('result');
    var selected = false;

    for (var i = 0; i < radios.length; i++) {
      if (radios[i].checked) {
        selected = true;
        if (radios[i].value === correctAnswer) {
          result.textContent = 'Correct!';
          result.style.color = 'green';
        } else {
          result.textContent = 'Incorrect. Try again!';
          result.style.color = 'red';
        }
        break;
      }
    }

    if (!selected) {
      result.textContent = 'Please select an answer.';
      result.style.color = 'orange';
    }
  }
</script>

<style>
  .styled-button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
  }

  .styled-button:hover {
    background-color: #45a049;
  }
</style>
