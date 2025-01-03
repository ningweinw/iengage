---
layout: default
title:  "Unlocking Insights with Azure Databricks"
category: "Case Study"
sub-category: "Data and AI"
courses: [DP-203]
---
# Unlocking Insights with Azure Databricks for Contoso Analytics

## Introduction
In the vibrant city of Seattle, the data-focused enterprise Contoso encounters a significant challenge. Their CTO has tasked the data team with enhancing supply chain efficiency while forecasting future demand across regions to support a bold product expansion.

To tackle this, the team chooses Azure Databricks as their centralized platform for scalable analytics and AI-driven solutions. The requirements are as follows:

#### Requirement 1: Data Cleaning and Preparation
The initial step involves processing and transforming raw data from IoT sensors, ERP systems, and third-party logistics databases. The team aims to use Azure Databricks to ensure the data is continuously cleaned, deduplicated, and enriched in near-real time.

#### Requirement 2: Ad-hoc Queries and Dashboards
Once the data is prepared, analysts plan to conduct ad-hoc queries and generate dashboards. These analyses will uncover actionable insights, such as identifying bottlenecks in warehouses and underutilized transport routes.

#### Requirement 3: Machine Learning for Demand Prediction
With clean data in place, the data science team will create a machine learning model on Azure Databricks to forecast demand spikes. The model will incorporate historical sales data, weather patterns, and socio-economic trends to provide accurate predictions.

#### Requirement 4: Operationalizing the Model
Finally, the engineering team will operationalize the predictive model by integrating it into the supply chain management system. They aim to schedule workflows to retrain the model periodically and deploy it as an API endpoint for real-time predictions.

#### Match the correct answer to each question below by dragging and dropping.

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
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
</head>
<body>
    <div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="azureDataFabrics">SQL Warehouse</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="azureSynapse">MLFlow experiment</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="crmSocialSales">Databricks Job</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="azurePurview">Delta Live Table</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="synapseSpark">Notebook</div>
    </div>
    <div>
        <p>Which Azure Databricks functionality should be used for Requirement 1</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="azurePurview"></div>
    </div>
    <div>
        <p>Which Azure Databricks functionality should be used for Requirement 2?</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="azureDataFabrics"></div>
    </div>
    <div>
        <p>Which Azure Databricks functionality should be used for Requirement 3?</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="azureSynapse"></div>
    </div>
    <div>
        <p>Which Azure Databricks functionality should be used for Requirement 4?</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="crmSocialSales"></div>
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
</body>
</html>
