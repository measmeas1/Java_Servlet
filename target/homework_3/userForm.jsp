<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .container {
            width: 60%;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #5c5c8a;
        }

        form {
            display: grid;
            gap: 15px;
        }

        label {
            font-size: 1.1em;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="password"], select, input[type="color"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1em;
        }

        input[type="checkbox"], input[type="radio"] {
            margin-right: 10px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .form-row > div {
            flex: 1;
        }

        .form-buttons {
            text-align: center;
        }

        input[type="submit"] {
            background-color: #5c5c8a;
            color: white;
            padding: 10px 20px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #4a4a6d;
        }

        .link {
            text-align: center;
            margin-top: 20px;
        }

        .link a {
            color: #5c5c8a;
            text-decoration: none;
            font-size: 1.1em;
        }

        .link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Register Your Details</h2>

        <form action="submitUserForm" method="POST">
            <!-- Email Field -->
            <div class="form-row">
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
            </div>

            <!-- Password Field -->
            <div class="form-row">
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
            </div>

            <!-- Birthday Field -->
            <div class="form-row">
                <div>
                    <label for="birthday">Birthday:</label>
                    <input type="date" id="birthday" name="birthday" required>
                </div>
            </div>

            <!-- New Student Field (Radio Buttons) -->
            <div class="form-row">
                <div>
                    <label>New Student:</label>
                    <label for="newStudentYes">
                        <input type="radio" id="newStudentYes" name="newStudent" value="true"> Yes
                    </label>
                    <label for="newStudentNo">
                        <input type="radio" id="newStudentNo" name="newStudent" value="false"> No
                    </label>
                </div>
            </div>

            <!-- College Field -->
            <div class="form-row">
                <div>
                    <label for="college">College:</label>
                    <input type="text" id="college" name="college" required>
                </div>
            </div>

            <!-- Major Field (Dropdown Selection) -->
            <div class="form-row">
                <div>
                    <label for="major">Major:</label>
                    <select id="major" name="major" required>
                        <option value="IT">IT</option>
                        <option value="Business">Business</option>
                        <option value="Science">Science</option>
                        <option value="Arts">Arts</option>
                        <option value="Engineering">Engineering</option>
                    </select>
                </div>
            </div>

            <!-- Favorite Color Field (Color Picker) -->
            <div class="form-row">
                <div>
                    <label for="favoriteColor">Favorite Color:</label>
                    <input type="color" id="favoriteColor" name="favoriteColor" required>
                </div>
            </div>

            <!-- Terms Accepted Field (Checkbox) -->
            <div class="form-row">
                <div>
                    <label for="termsAccepted">I accept the Terms and Conditions:</label>
                    <input type="checkbox" id="termsAccepted" name="termsAccepted" value="true" required>
                </div>
            </div>

            <!-- Submit Button -->
            <div class="form-buttons">
                <input type="submit" value="Submit">
            </div>
        </form>

        <div class="link">
            <a href="result.jsp">Go back to the result page</a>
        </div>
    </div>

</body>
</html>
