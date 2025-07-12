<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Employee Directory</title>
  <link rel="stylesheet" href="/static/css/style.css" />
</head>
<body>
  <header>
    <h1>Employee Directory</h1>
    <button id="add-employee-btn">Add Employee</button>
  </header>

  <section id="controls">
    <input type="text" id="search-input" placeholder="Search by name or email..." />
    
    <select id="filter-department">
      <option value="">All Departments</option>
      <option value="HR">HR</option>
      <option value="IT">IT</option>
      <option value="Sales">Sales</option>
    </select>

    <select id="filter-role">
      <option value="">All Roles</option>
      <option value="Manager">Manager</option>
      <option value="Developer">Developer</option>
      <option value="Salesperson">Salesperson</option>
    </select>

    <select id="sort-select">
      <option value="">Sort By</option>
      <option value="firstName">First Name</option>
      <option value="department">Department</option>
    </select>
  </section>

  <section id="employee-list-container">
    <#-- Freemarker rendering employee cards -->
    <#list employees as employee>
      <div class="employee-card" data-id="${employee.id}">
        <h3>${employee.firstName} ${employee.lastName}</h3>
        <p><strong>ID:</strong> ${employee.id}</p>
        <p><strong>Email:</strong> ${employee.email}</p>
        <p><strong>Department:</strong> ${employee.department}</p>
        <p><strong>Role:</strong> ${employee.role}</p>
        <button class="edit-btn" data-id="${employee.id}">Edit</button>
        <button class="delete-btn" data-id="${employee.id}">Delete</button>
      </div>
    </#list>
  </section>

  <section id="pagination">
    <button id="prev-page">Previous</button>
    <span id="page-info"></span>
    <button id="next-page">Next</button>
  </section>

  <section id="form-section" class="hidden">
    <h2 id="form-title">Add Employee</h2>
    <form id="employee-form">
      <input type="hidden" id="employee-id" />
      <label>First Name: <input type="text" id="first-name" required /></label>
      <label>Last Name: <input type="text" id="last-name" required /></label>
      <label>Email: <input type="email" id="email" required /></label>
      <label>Department:
        <select id="department" required>
          <option value="">Select Department</option>
          <option value="HR">HR</option>
          <option value="IT">IT</option>
          <option value="Sales">Sales</option>
        </select>
      </label>
      <label>Role:
        <select id="role" required>
          <option value="">Select Role</option>
          <option value="Manager">Manager</option>
          <option value="Developer">Developer</option>
          <option value="Salesperson">Salesperson</option>
        </select>
      </label>
      <div class="form-buttons">
        <button type="submit" id="save-btn">Save</button>
        <button type="button" id="cancel-btn">Cancel</button>
      </div>
    </form>
  </section>

  <script src="/static/js/data.js"></script>
  <script src="/static/js/app.js"></script>
</body>
</html>
