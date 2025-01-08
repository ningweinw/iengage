---
layout: default
title:  "Responsible AI at Contoso"
category: "Case Study"
sub-category: "Data and AI"
courses: [AI-102, PR-801, MS-4009]
---

# Responsible AI at Contoso 

## Company Background

Contoso is a leading technology company that develops AI-powered solutions for various industries. The company is committed to implementing responsible AI practices to ensure that its AI systems are ethical, trustworthy, and beneficial to all stakeholders.

## Scenario

Alex, a lead engineer at Contoso, has been tasked with overseeing the implementation of responsible AI practices across the company's AI projects. Alex needs to identify and address different challenges under the six considerations of responsible AI: fairness, reliability and safety, privacy and security, inclusiveness, transparency, and accountability.

### Question 1:
**Contoso's AI hiring system is found to have a bias against certain demographic groups, leading to unfair hiring practices.**

<form id="quizForm1">
  <input type="radio" id="q1a" name="q1" value="A">
  <label for="q1a">Fairness </label><br>
  <input type="radio" id="q1b" name="q1" value="B">
  <label for="q1b">Reliability and Safety</label><br>
  <input type="radio" id="q1c" name="q1" value="C">
  <label for="q1c">Privacy and Security </label><br>
  <input type="radio" id="q1d" name="q1" value="D">
  <label for="q1d">Inclusiveness </label><br>
  <input type="radio" id="q1d" name="q1" value="E">
  <label for="q1d">Transparency</label><br>
  <input type="radio" id="q1d" name="q1" value="F">
  <label for="q1d">Accountability </label><br>
  <button type="button" onclick="checkAnswer('q1', 'A', 'result1')" class="styled-button">Submit</button>
</form>

<p id="result1"></p>

### Question 2:
**Contoso's AI-powered virtual assistant is not accessible to users with disabilities, limiting its usability.**

<form id="quizForm2">
  <input type="radio" id="q1a" name="q2" value="A">
  <label for="q1a">Fairness </label><br>
  <input type="radio" id="q1b" name="q2" value="B">
  <label for="q1b">Reliability and Safety</label><br>
  <input type="radio" id="q1c" name="q2" value="C">
  <label for="q1c">Privacy and Security </label><br>
  <input type="radio" id="q1d" name="q2" value="D">
  <label for="q1d">Inclusiveness </label><br>
  <input type="radio" id="q1d" name="q2" value="E">
  <label for="q1d">Transparency</label><br>
  <input type="radio" id="q1d" name="q2" value="F">
  <label for="q1d">Accountability </label><br>
  <button type="button" onclick="checkAnswer('q2', 'D', 'result2')" class="styled-button">Submit</button>
</form>

<p id="result2"></p>

### Question 3:
**An AI-powered medical diagnosis tool occasionally provides incorrect diagnoses, posing a risk to patient safety.**

<form id="quizForm3">
  <input type="radio" id="q1a" name="q3" value="A">
  <label for="q1a">Fairness </label><br>
  <input type="radio" id="q1b" name="q3" value="B">
  <label for="q1b">Reliability and Safety</label><br>
  <input type="radio" id="q1c" name="q3" value="C">
  <label for="q1c">Privacy and Security </label><br>
  <input type="radio" id="q1d" name="q3" value="D">
  <label for="q1d">Inclusiveness </label><br>
  <input type="radio" id="q1d" name="q3" value="E">
  <label for="q1d">Transparency</label><br>
  <input type="radio" id="q1d" name="q3" value="F">
  <label for="q1d">Accountability </label><br>
  <button type="button" onclick="checkAnswer('q3', 'B', 'result3')" class="styled-button">Submit</button>
</form>

<p id="result3"></p>

### Question 4:
**Users of Contoso's AI recommendation system do not understand how the recommendations are generated, leading to a lack of trust.**

<form id="quizForm4">
  <input type="radio" id="q1a" name="q4" value="A">
  <label for="q1a">Fairness </label><br>
  <input type="radio" id="q1b" name="q4" value="B">
  <label for="q1b">Reliability and Safety</label><br>
  <input type="radio" id="q1c" name="q4" value="C">
  <label for="q1c">Privacy and Security </label><br>
  <input type="radio" id="q1d" name="q4" value="D">
  <label for="q1d">Inclusiveness </label><br>
  <input type="radio" id="q1d" name="q4" value="E">
  <label for="q1d">Transparency</label><br>
  <input type="radio" id="q1d" name="q4" value="F">
  <label for="q1d">Accountability </label><br>
  <button type="button" onclick="checkAnswer('q4', 'E', 'result4')" class="styled-button">Submit</button>
</form>

<p id="result4"></p>

<script>
  function checkAnswer(question, correctAnswer, resultId) {
    var radios = document.getElementsByName(question);
    var result = document.getElementById(resultId);
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
