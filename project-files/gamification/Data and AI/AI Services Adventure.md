---
layout: default
title:  "AI Services Adventure"
category: "Gamification"
sub-category: "Data and AI"
courses: [AI-102, PR-801]
---
# Azure AI Services Adventure

## Introduction
In the futuristic city of Innovatia, a group of brilliant data scientists and tech enthusiasts are on a mission to harness the power of Azure AI services to solve complex problems and drive innovation. Led by Dr. Alice, a renowned data scientist, the team embarks on an exciting expedition to explore and implement Azure AI solutions.

<a href="./images/ai2.png">
  <img src="./images/ai2.png" alt="Alex is joined by a team of sidekicks">
</a>
<br>

**Stage 1: The Discovery**
Dr. Alice and her team, including tech-savvy members like Bob, a cloud architect, and Helen, a machine learning expert, discover a hidden lab filled with data anomalies. They realize that these anomalies can be resolved using Azure AI services. The team decides to provision the necessary AI services on Azure to begin their investigation.

<a href="./images/ai1.png">
  <img src="./images/ai1.png" alt="Alex is joined by a team of sidekicks">
</a>
<br>

**Challenge:**: Provision an AI service on Azure

Reorder Sequence: Arrange the steps to provision an AI service on Azure in the correct order.

<ul id="sortable-setup" class="styled-list">
  
  <li class="ui-state-default" data-order="3">Select "Create a resource".</li>
  <li class="ui-state-default" data-order="1">Choose the AI service (e.g., Computer Vision)</li>
  <li class="ui-state-default" data-order="2">Configure the service settings (e.g., region, pricing tier)</li>
  <li class="ui-state-default" data-order="4">Review and create the service</li>
  
</ul>

<button onclick="checkOrderSetup()">Check Order</button>
<button onclick="helpMeSetup()">Help me</button>

<p id="feedback-setup"></p>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
  $(function() {
    $("#sortable-setup").sortable();
    $("#sortable-setup").disableSelection();
  });

  function checkOrderSetup() {
    var items = $("#sortable-setup li");
    var correct = true;
    items.each(function(index) {
      if ($(this).data("order") !== index + 1) {
        correct = false;
      }
    });
    var feedback = document.getElementById("feedback-setup");
    if (correct) {
      feedback.textContent = "Correct order!";
      feedback.style.color = "green";
    } else {
      feedback.textContent = "Incorrect order. Try again.";
      feedback.style.color = "red";
    }
  }

  function helpMeSetup() {
    var items = $("#sortable-setup li").sort(function(a, b) {
      return $(a).data("order") - $(b).data("order");
    });
    $("#sortable-setup").html(items);
    document.getElementById("feedback-setup").textContent = "Here is the correct order.";
    document.getElementById("feedback-setup").style.color = "blue";
  }
</script>


**Stage 2: Securing the Lab**
To ensure the security of their AI services, the team sets up endpoints and keys. They also decide to use Azure Key Vault to store their secrets securely, protecting their data from potential breaches.

**Challenge**: Store keys in Azure Key Vault.

What is the primary purpose of Azure Key Vault?

<form id="quizForm">
  <input type="radio" id="q1" name="answer" value="q1">
  <label for="a1"> To store and manage secrets, keys, and certificates securely</label><br>
  <input type="radio" id="q2" name="answer" value="q2">
  <label for="a2">To provision AI services</label><br>
  <input type="radio" id="q3" name="answer" value="q3">
  <label for="a3">To analyze images and extract information</label><br>
  <input type="radio" id="q4" name="answer" value="q4">
  <label for="a4">To convert spoken language into text</label><br>
  <button type="button" onclick="checkAnswer()" class="styled-button">Submit</button>
</form>

<p id="result"></p>

<script>
  function checkAnswer() {
    var radios = document.getElementsByName('answer');
    var correctAnswer = 'q1';
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

Reorder Sequence: Arrange the steps to store a key in Azure Key Vault in the correct order.

<ul id="sortable-setup" class="styled-list">  
  <li class="ui-state-default" data-order="1">Create a new key vault</li>
  <li class="ui-state-default" data-order="3">Add a new secret to the key vault</li>
  <li class="ui-state-default" data-order="2">Retrieve the key from the AI service</li>
  <li class="ui-state-default" data-order="4">Store the key as a secret in the key vault</li>
  
</ul>

<button onclick="checkOrderSetup1()">Check Order</button>
<button onclick="helpMeSetup1()">Help me</button>

<p id="feedback-setup"></p>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
  $(function() {
    $("#sortable-setup").sortable();
    $("#sortable-setup").disableSelection();
  });

  function checkOrderSetup1() {
    var items = $("#sortable-setup li");
    var correct = true;
    items.each(function(index) {
      if ($(this).data("order") !== index + 1) {
        correct = false;
      }
    });
    var feedback = document.getElementById("feedback-setup");
    if (correct) {
      feedback.textContent = "Correct order!";
      feedback.style.color = "green";
    } else {
      feedback.textContent = "Incorrect order. Try again.";
      feedback.style.color = "red";
    }
  }

  function helpMeSetup1() {
    var items = $("#sortable-setup li").sort(function(a, b) {
      return $(a).data("order") - $(b).data("order");
    });
    $("#sortable-setup").html(items);
    document.getElementById("feedback-setup").textContent = "Here is the correct order.";
    document.getElementById("feedback-setup").style.color = "blue";
  }
</script>










The city is threatened by a group of villains, each representing a challenge:

**Blurry Bandit:** Causes images to be blurry and hard to analyze.<br>
**Shadow Shifter:** Creates shadows that obscure important details in images.<br>
**Noise Nuisance:** Adds random noise to images, making them difficult to process.<br>
**Distortion Demon:** Warps images, making it hard to recognize objects.<br>

<a href="./images/av2.png">
  <img src="./images/av2.png" alt="a group of villains">
</a>
<br>

### First Challenge: The Blurry Bandit
Alex and OCR Owl encounter their first challenge. The Blurry Bandit has struck, making important documents unreadable. OCR Owl uses its Optical Character Recognition (OCR) powers to extract text from the blurry images.

**Which Azure AI Vision Service feature did OCR Owl use to read the text from the blurry images**

<form id="quizForm1">
  <input type="radio" id="q1a" name="q1" value="A">
  <label for="q1a">A. Image Tagging</label><br>
  <input type="radio" id="q1b" name="q1" value="B">
  <label for="q1b">B. Face Detection</label><br>
  <input type="radio" id="q1c" name="q1" value="C">
  <label for="q1c">C. Optical Character Recognition (OCR)</label><br>
  <input type="radio" id="q1d" name="q1" value="D">
  <label for="q1d">D. Image Analysis</label><br>
  <button type="button" onclick="checkAnswer1()" class="styled-button">Submit</button>
</form>

<p id="result1"></p>

### Second Challenge: The Shadow Shifter
Next, Alex and Tagging Tiger face the Shadow Shifter, who has cast shadows over surveillance footage. Tagging Tiger uses its image tagging abilities to identify objects despite the shadows.

**How did Tagging Tiger identify objects in shadowy images?**

<form id="quizForm2">
  <input type="radio" id="q2a" name="q2" value="A">
  <label for="q2a">A. Face Detection</label><br>
  <input type="radio" id="q2b" name="q2" value="B">
  <label for="q2b">B. Image Tagging</label><br>
  <input type="radio" id="q2c" name="q2" value="C">
  <label for="q2c">C. Text Extraction</label><br>
  <input type="radio" id="q2d" name="q2" value="D">
  <label for="q2d">D. Image Analysis</label><br>
  <button type="button" onclick="checkAnswer2()" class="styled-button">Submit</button>
</form>

<p id="result2"></p>

### Final Challenge: The Distortion Demon
In the final showdown, Alex and the team confront the Distortion Demon, who has warped images of missing persons. Face Falcon uses its face detection and analysis powers to recognize and analyze the faces, helping to locate the missing individuals.

**Which feature did Face Falcon use to recognize and analyze faces in distorted images?**

<form id="quizForm3">
  <input type="radio" id="q3a" name="q3" value="A">
  <label for="q3a">A. Image Tagging</label><br>
  <input type="radio" id="q3b" name="q3" value="B">
  <label for="q3b">B. Face Detection</label><br>
  <input type="radio" id="q3c" name="q3" value="C">
  <label for="q3c">C. Optical Character Recognition (OCR)</label><br>
  <input type="radio" id="q3d" name="q3" value="D">
  <label for="q3d">D. Image Analysis</label><br>
  <button type="button" onclick="checkAnswer3()" class="styled-button">Submit</button>
</form>

<p id="result3"></p>


<script>
  function checkAnswer1() {
    var radios = document.getElementsByName('q1');
    var correctAnswer = 'C';
    var result = document.getElementById('result1');
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

  function checkAnswer2() {
    var radios = document.getElementsByName('q2');
    var correctAnswer = 'B';
    var result = document.getElementById('result2');
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

  function checkAnswer3() {
    var radios = document.getElementsByName('q3');
    var correctAnswer = 'B';
    var result = document.getElementById('result3');
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
