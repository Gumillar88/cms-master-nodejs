export const renderDashboardPage = () => {
  return `
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Dashboard</title>
    </head>
    <body>
      <h1>Dashboard</h1>
      <p>Welcome to the dashboard!</p>
      <form action="/logout" method="post">
        <button type="submit">Logout</button>
      </form>
    </body>
    </html>
  `;
};
