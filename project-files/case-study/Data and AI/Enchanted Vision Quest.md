---
layout: default
title:  "Building an Internal Chatbot"
category: "Case Study"
sub-category: "Data and AI"
courses: [AI-102, AI-3016, AI-3022, PR-801]
---

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

