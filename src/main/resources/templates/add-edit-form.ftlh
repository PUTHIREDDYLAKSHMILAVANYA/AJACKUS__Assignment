<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${employee?has_content?then('Edit Employee', 'Add Employee')}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
    <div class="container">
        <h1>${employee?has_content?then('Edit Employee', 'Add Employee')}</h1>

        <form id="employee-form" class="form-container">
            <input type="hidden" id="employee-id" value="${employee?has_content?then(employee.id, '')}"/>

            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" value="${employee?has_content?then(employee.firstName, '')}" required>
            <div id="firstName-error" class="error"></div>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" value="${employee?has_content?then(employee.lastName, '')}" required>
            <div id="lastName-error" class="error"></div>

            <label for="email">Email:</label>
            <input type="email" id="email" value="${employee?has_content?then(employee.email, '')}" required>
            <div id="email-error" class="error"></div>

            <label for="department">Department:</label>
            <input type="text" id="department" value="${employee?has_content?then(employee.department, '')}" required>
            <div id="department-error" class="error"></div>

            <label for="role">Role:</label>
            <input type="text" id="role" value="${employee?has_content?then(employee.role, '')}" required>
            <div id="role-error" class="error"></div>

            <div class="form-buttons">
                <button type="submit" id="save-btn">Save</button>
                <button type="button" onclick="cancelForm()">Cancel</button>
            </div>
        </form>
    </div>

    <script src="/static/js/data.js"></script>
    <script src="/static/js/app.js"></script>
</body>
</html>
