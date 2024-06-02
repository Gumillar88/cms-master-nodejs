export const renderLoginPage = () => {
    
    return `
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        </head>
        <body>
        <h1>Login</h1>
        <form action="/login" method="post">
            <label for="user_login">Username:</label>
            <input type="text" id="user_login" name="user_login" required>
            <br>
            <label for="user_pass">Password:</label>
            <input type="password" id="user_pass" name="user_pass" required>
            <br>
            <button type="submit">Login</button>
        </form>
        </body>
        </html>
    `;
};

debugger;