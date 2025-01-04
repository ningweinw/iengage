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

<ul id="sortable-setup1" class="styled-list">  
  <li class="ui-state-default" data-order="1">Create a new key vault</li>
  <li class="ui-state-default" data-order="3">Add a new secret to the key vault</li>
  <li class="ui-state-default" data-order="2">Retrieve the key from the AI service</li>
  <li class="ui-state-default" data-order="4">Store the key as a secret in the key vault</li>
  
</ul>

<button onclick="checkOrderSetup1()">Check Order</button>
<button onclick="helpMeSetup1()">Help me</button>

<p id="feedback-setup1"></p>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
  $(function() {
    $("#sortable-setup1").sortable();
    $("#sortable-setup1").disableSelection();
  });

  function checkOrderSetup1() {
    var items = $("#sortable-setup1 li");
    var correct = true;
    items.each(function(index) {
      if ($(this).data("order") !== index + 1) {
        correct = false;
      }
    });
    var feedback = document.getElementById("feedback-setup1");
    if (correct) {
      feedback.textContent = "Correct order!";
      feedback.style.color = "green";
    } else {
      feedback.textContent = "Incorrect order. Try again.";
      feedback.style.color = "red";
    }
  }

  function helpMeSetup1() {
    var items = $("#sortable-setup1 li").sort(function(a, b) {
      return $(a).data("order") - $(b).data("order");
    });
    $("#sortable-setup1").html(items);
    document.getElementById("feedback-setup1").textContent = "Here is the correct order.";
    document.getElementById("feedback-setup1").style.color = "blue";
  }
</script>


**Stage 3: Analyzing the Anomalies**
With their AI services provisioned and secured, Dr. Aria and her team begin analyzing the data anomalies. They use various Azure AI services to extract insights, identify patterns, and solve the mysteries hidden within the data.

**Challenge**: Use Azure AI services to analyze data and extract insights.

Drag and Drop: Match the AI service to its description.

   <style>

        .draggable-text {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            border: 2px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, transform 0.3s;
        }
        .draggable-text:hover {
            background-color: #e0e0e0;
            transform: scale(1.05);
        }
        .drop-area {
            width: 300px;
            height: 50px;
            border: 2px dashed #ccc;
            border-radius: 5px;
            margin: 10px;
            display: inline-block;
            vertical-align: top;
            background-color: #fafafa;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, border-color 0.3s;
        }
        .drop-area:hover {
            background-color: #f0f0f0;
            border-color: #bbb;
        }
        .drop-area.correct {
            background-color: #d4edda;
            border-color: #c3e6cb;
        }
        .drop-area.incorrect {
            background-color: #f8d7da;
            border-color: #f5c6cb;
        }
        #message {
            font-size: 1.2em;
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
        }
    #message.correct {
            color: #155724;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
    }
    #message.incorrect {
            color: #721c24;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
    }
    </style>

    <div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="compv">Computer Vision</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="spsvc">Speech Service</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="langser">Language Service</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="clu">Conversational Language Understanding</div>
        
    </div>
    <div>
        <p>Analyzes images and extracts information.</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="compv"></div>
    </div>
    <div>
        <p>Converts spoken language into text.</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="spsvc"></div>
    </div>
    <div>
        <p>Analyzes text to extract insights.</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="langser"></div>
    </div>
    <div>
        <p>Understands and interprets user intentions.</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="clu"></div>
    </div>
   
    <p id="message"></p>

    <script>
        function allowDrop(event) {
            event.preventDefault();
        }

        function drag(event) {
            event.dataTransfer.setData("text", event.target.id);
        }

        function drop(event) {
            event.preventDefault();
            var data = event.dataTransfer.getData("text");
            var draggedElement = document.getElementById(data);
            var dropAreaAnswer = event.target.getAttribute("data-answer");

            if (draggedElement.id === dropAreaAnswer) {
                event.target.appendChild(draggedElement);
                event.target.classList.add("correct");
                event.target.classList.remove("incorrect");
                var messageElement = document.getElementById("message");
                messageElement.innerText = "Correct!";
                messageElement.classList.add("correct");
                messageElement.classList.remove("incorrect");
            } else {
                event.target.classList.add("incorrect");
                event.target.classList.remove("correct");
                var messageElement = document.getElementById("message");
                messageElement.innerText = "Error: Incorrect match.";
                messageElement.classList.add("incorrect");
                messageElement.classList.remove("correct");
            }
        }
    </script>


**Stage 4: The Breakthrough**
As the team delves deeper into the data, they uncover groundbreaking insights that could revolutionize the field of data science. They present their findings to the Innovatia Council, showcasing the power and potential of Azure AI services.

**Challenge**: Present the findings using Azure AI services.

Where can you find the endpoint URL and keys for your Azure AI service?"

<form id="quizForm1">
  <input type="radio" id="q1" name="answer2" value="q1">
  <label for="a1"> In the Azure portal under the resource's 'Keys and Endpoint' section</label><br>
  <input type="radio" id="q2" name="answer2" value="q2">
  <label for="a2">In the Azure Marketplace</label><br>
  <input type="radio" id="q3" name="answer2" value="q3">
  <label for="a3">In the Azure CLI</label><br>
  <input type="radio" id="q4" name="answer2" value="q4">
  <label for="a4">In the Azure documentation</label><br>
  <button type="button" onclick="checkAnswer2()" class="styled-button">Submit</button>
</form>

<p id="result2"></p>

<script>
  function checkAnswer2() {
    var radios = document.getElementsByName('answer2');
    var correctAnswer = 'q1';
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
</script>

