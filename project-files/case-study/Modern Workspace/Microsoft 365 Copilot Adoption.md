---
layout: default
title:  " M365 Copilot Adoption"
category: "Case Study1"
sub-category: "Modern Workplace"
courses: [MS-4005, MS-4007]
---


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Microsoft 365 Copilot Framework</title>
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
        .message {
            font-size: 1.2em;
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
        }
        .message.correct {
            color: #155724;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
        }
        .message.incorrect {
            color: #721c24;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
        }
    </style>
</head>
<body>
    <h2>Map the Case with the Microsoft 365 Copilot User Enablement Framework</h2>

    <!-- Draggable Items -->
    <div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="three">Three-Part AI Approach</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="executive">Executive Alignment</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="user">User Enablement</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="people">People-First Strategy</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="copilot">Copilot Center of Excellence (CoE)</div>
        <div class="draggable-text" draggable="true" ondragstart="drag(event)" id="prod">Productivity Boost</div>
    </div>

    <!-- Sections with Drop Areas -->
    <div>
        <p>Get Ready</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="three"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="executive"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="user"></div>
        <p class="message"></p>
    </div>

    <div>
        <p>Onboard and Engage</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="copilot"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="people"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="prod"></div>
        <p class="message"></p>
    </div>

    <div>
        <p>Deliver Impact</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="three"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="user"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="executive"></div>
        <p class="message"></p>
    </div>

    <div>
        <p>Extend and Optimize</p>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="prod"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="copilot"></div>
        <div class="drop-area" ondrop="drop(event)" ondragover="allowDrop(event)" data-answer="people"></div>
        <p class="message"></p>
    </div>

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
            var messageElement = event.target.closest('div').querySelector('.message');

            if (event.target.children.length === 0) {
                if (draggedElement.id === dropAreaAnswer) {
                    event.target.appendChild(draggedElement);
                    event.target.classList.add("correct");
                    event.target.classList.remove("incorrect");
                    messageElement.innerText = "Correct!";
                    messageElement.classList.add("correct");
                    messageElement.classList.remove("incorrect");
                } else {
                    event.target.classList.add("incorrect");
                    event.target.classList.remove("correct");
                    messageElement.innerText = "Error: Incorrect match.";
                    messageElement.classList.add("incorrect");
                    messageElement.classList.remove("correct");
                }
            } else {
                alert("This drop area is already occupied.");
            }
        }
    </script>
</body>
</html>
