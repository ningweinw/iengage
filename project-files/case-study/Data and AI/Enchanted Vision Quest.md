---
layout: default
title:  "The Enchanted Vision Quest: Challenges Faced by Dr. Visionary"
category: "Case Study123"
sub-category: "Data and AI"
courses: [AI-102, PR-801]
---

**Challenge:**: Provision an AI service on Azure

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sortable Setup</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <style>
    .container {
      display: flex;
    }
    .column {
      flex: 1;
      padding: 10px;
    }
    .box {
      border: 1px solid #ccc;
      padding: 10px;
      margin-bottom: 10px;
    }
    .styled-list {
      list-style-type: none;
      padding: 0;
    }
    .styled-list li {
      margin: 5px 0;
      padding: 10px;
      border: 1px solid #ccc;
      cursor: move;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="column">
      <div class="box">Create Custom Vision resources </div>
      <div class="box">Set up a new project </div>
      <div class="box">Collect training images </div>
      <div class="box">Upload and tag images </div>
    </div>
    <div class="column">
      <ul id="sortable-setup" class="styled-list">
        <li class="ui-state-default" data-order="3">Select "Create a resource".</li>
        <li class="ui-state-default" data-order="1">Choose the AI service (e.g., Computer Vision)</li>
        <li class="ui-state-default" data-order="2">Configure the service settings (e.g., region, pricing tier)</li>
        <li class="ui-state-default" data-order="4">Review and create the service</li>
      </ul>
      <button onclick="checkOrderSetup()">Check Order</button>
      <button onclick="helpMeSetup()">Help me</button>
      <p id="feedback-setup"></p>
    </div>
  </div>

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
</body>
</html>
