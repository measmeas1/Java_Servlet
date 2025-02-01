<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            padding: 40px;
        }

        h2 {
            color: #5c5c8a;
            text-align: center;
            font-size: 2em;
            margin-bottom: 20px;
        }

        .result-box {
            background-color: #fff;
            padding: 30px;
            margin: 0 auto;
            max-width: 600px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .result-box h3 {
            text-align: center;
            color: #4caf50;
            font-size: 1.5em;
        }

        .result-box h3.fail {
            color: #f44336;
        }

        .result-box p {
            font-size: 1.2em;
            margin: 10px 0;
        }

        .back-link {
            display: block;
            text-align: center;
            font-size: 1.1em;
            margin-top: 20px;
            color: #5c5c8a;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>Form Submission Result</h2>

    <div class="result-box">
        <c:choose>
            <c:when test="${isSaved}">
                <h3>Data saved successfully!</h3>
                <p><strong>Email:</strong> ${user.email}</p>
                <p><strong>Birthday:</strong> ${user.birthday}</p>
                <p><strong>New Student:</strong> ${user.newStudent ? 'Yes' : 'No'}</p>
                <p><strong>College:</strong> ${user.college}</p>
                <p><strong>Major:</strong> ${user.major}</p>
                <p><strong>Favorite Color:</strong> ${user.favoriteColor}</p>
                <p><strong>Terms Accepted:</strong> ${user.termsAccepted ? 'Yes' : 'No'}</p>
            </c:when>
            <c:otherwise>
                <h3 class="fail">Failed to save data!</h3>
                <p>There was an error while saving your data. Please try again.</p>
            </c:otherwise>
        </c:choose>

        <a href="userForm.jsp" class="back-link">Go back to the form</a>
    </div>

</body>
</html>
