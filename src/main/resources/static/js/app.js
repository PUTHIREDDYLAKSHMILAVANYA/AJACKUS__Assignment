const app = document.getElementById("app");

const mockEmployees = [
  {
    id: 1,
    firstName: "John",
    lastName: "Doe",
    email: "john@example.com",
    department: "HR",
    role: "Manager",
  },
  {
    id: 2,
    firstName: "Jane",
    lastName: "Smith",
    email: "jane@example.com",
    department: "IT",
    role: "Developer",
  },
];

function renderEmployees() {
  app.innerHTML = "";

  mockEmployees.forEach((emp) => {
    const card = document.createElement("div");
    card.className = "employee-card";
    card.innerHTML = `
      <h3>${emp.firstName} ${emp.lastName}</h3>
      <p>ID: ${emp.id}</p>
      <p>Email: ${emp.email}</p>
      <p>Department: ${emp.department}</p>
      <p>Role: ${emp.role}</p>
      <button>Edit</button>
      <button>Delete</button>
    `;
    app.appendChild(card);
  });
}

window.onload = renderEmployees;
