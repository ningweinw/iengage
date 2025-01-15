---
layout: default
title:  " AI Services for Retail"
category: "Case Study123"
sub-category: "Data and AI"
courses: [AI-102, PR-801]
---

<div class="fixed-buttons">

  <a href="#introduction" class="button">Introduction</a>
  <a href="#technical-requirements" class="button">Technical Requirements</a>
  <a href="#business-requirements" class="button">Business Requirements</a>
</div>


<br><br>


# Case Study: Transforming Retail Operations with Azure AI Services

## Business Overview
<a id="business"></a>
Lakeshore Retail, a prominent retail chain with over 500 stores nationwide, offers a diverse range of products from groceries to electronics and maintains a strong online presence. Lakeshore Retail goals include enhancing customer experience, streamlining operations, and leveraging data for informed decision-making.

## Existing Setup
<a id="existing"></a>
Lakeshore Retail's robust IT infrastructure includes:
1. **Point of Sale (POS) Systems:** Integrated with inventory management.
2. **Customer Relationship Management (CRM):** For managing customer data and interactions.
3. **E-commerce Platform:** Supporting online sales and customer engagement.
4. **Data Warehousing:** For storing and analyzing sales and customer data.

## New Requirement
<a id="new"></a>
Lakeshore Retail has identified several areas for improvement:
1. **Enhanced Customer Experience:** Personalizing customer interactions both online and in-store.
   - Virtual Try-On Feature: Lakeshore Retail is planning to launch the virtual 'Try-It-On' feature with their range of eyewear products such as sunglasses, swimming goggles, and spectacles. Customers will be able to upload a front-profile selfie and see how the eyewear fits.
   - In-Store Touch Screen Assistant: Enhancing the touch-screen assistant in retail outlets with mic input and read-aloud functionality.
   - Digital Assistant: Creating a digital assistant for their e-commerce platform to assist customers with order details, return policies, etc.
   - Sentiment Analysis: Analyzing product reviews to recommend more suitable products to customers.
   - Image-Based Search: Add an option in the E-commerce site, where customers can upload an image and search for similar items in the inventory.
2. **Streamline Business Operations**
    - Customer Purchase Analysis: Analyzing customer purchase invoices to identify patterns and draw business conclusions.
    - Social Media Analysis: Analyzing tweets to identify key topics being discussed about Lakeshore Retail.
3. **Business Expansion and Compliance**
    - Age Verification: Lakeshore Retail plans to expand its business by adding a liquor section in their retail outlets. To ensure minors cannot order liquor through the Touch-Screen Assistants, it will implement age verification for customers purchasing alcohol.

 

**Question 1:** Which Azure AI service can they use to implement the virtual Try-It-On feature, to identify the position of the eyes in an uploaded image ?
<form id="quizForm1">
  <input type="radio" id="q1a" name="q1" value="A">
  <label for="q1a">A) Azure Cognitive Service </label><br>
  <input type="radio" id="q1b" name="q1" value="B">
  <label for="q1b">B) Azure Bot Service</label><br>
  <input type="radio" id="q1c" name="q1" value="C">
  <label for="q1c">C) Face API </label><br>
  <input type="radio" id="q1d" name="q1" value="D">
  <label for="q1d">D) Azure Computer Vision </label><br>
  <button type="button" onclick="checkAnswer('q1', 'C', 'result1')" class="styled-button">Submit</button>
</form>
<p id="result1"></p>

**Question 2:** Lakeshore Retail wants to use the Azure AI Language Service to analyze product reviews and suggest products with higher positive reviews to customers. Which class and method should be used to analyze the product reviews using the Azure AI Language Service SDK in C#?
<form id="quizForm2">
  <input type="radio" id="q2a" name="q2" value="A">
  <label for="q2a">A) TextAnalyticsClient class and AnalyzeSentiment method </label><br>
  <input type="radio" id="q2b" name="q2" value="B">
  <label for="q2b">B) TextAnalyticsClient class and ExtractKeyPhrases method</label><br>
  <input type="radio" id="q2c" name="q2" value="C">
  <label for="q2c">C) LanguageClient class and ExtractKeyPhrases method</label><br>
  <input type="radio" id="q2d" name="q2" value="D">
  <label for="q2d">D) LanguageClient class and AnalyzeSentiment method </label><br>

  <button type="button" onclick="checkAnswer('q2', 'A', 'result2')" class="styled-button">Submit</button>
</form>

<p id="result2"></p>

**Question 3:** Which AI service and feature should the developers implement a read-aloud feature for visually impaired users in their Touch Screen Assistant at retail outlets?

<form id="quizForm3">
  <input type="radio" id="q3a" name="q3" value="A">
  <label for="q3a">A) Azure AI Vision Service with Optical Character Recognition (OCR) </label><br>
  <input type="radio" id="q3b" name="q3" value="B">
  <label for="q3b">B) Azure AI Language Service with Text Analytics</label><br>
  <input type="radio" id="q3c" name="q3" value="C">
  <label for="q3c">C) Azure AI Speech Service with Text-to-Speech (TTS) </label><br>
  <input type="radio" id="q3d" name="q3" value="D">
  <label for="q3d">D) Azure AI Bot Service with QnA Maker </label><br>
  <button type="button" onclick="checkAnswer('q3', 'C', 'result3')" class="styled-button">Submit</button>
</form>

<p id="result3"></p>

Question 4: Lakeshore Retail wants to analyze tweets about the company to identify key discussion topics. Which endpoint will you use for social media analysis?

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

<style>
.fixed-buttons {
  position: fixed;
  top: 0;
  width: 100%;
  background-color: white; /* Optional: to match the background */
  display: flex;
  padding: 10px 0;
  z-index: 1000; /* Ensure it stays on top of other content */
}

.button {
  margin: 0 10px;
  padding: 10px 20px;
  background-color: #0078d4;
  color: white;
  text-decoration: none;
  border-radius: 5px;
}

.button:hover {
  background-color: #0056b3;
}

.content {
  padding-top: 60px; /* Adjust this value as needed to ensure the heading is visible */
}
</style>
