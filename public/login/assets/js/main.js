document.getElementById('kt_login_singin_form').addEventListener('submit', async function(e) {
    e.preventDefault();

    const form = e.target;
    const formData = new FormData(form);
    const submitButton = document.getElementById('kt_login_singin_form_submit_button');
    const loadingIndicator = document.getElementById('login-loading');
    
    // Disable the submit button and show loading indicator
    submitButton.disabled = true;
    loadingIndicator.style.display = 'inline';

    try {
        const response = await fetch(form.action, {
            method: form.method,
            headers: {
                'X-CSRF-Token': formData.get('_csrf')
            },
            body: new URLSearchParams(formData)
        });

        const result = await response.json();
        // console.info("Response Views: ", result);

        if (response.ok) {
            // If login is successful, show SweetAlert and redirect
            Swal.fire({
                title: 'Success!',
                text: result.message,
                icon: 'success',
                confirmButtonText: 'OK'
            }).then(() => {
                window.location.href = result.redirectUrl;
            });
        } else if (response.status === 401) {
            // If invalid credentials, show SweetAlert
            Swal.fire({
                title: 'Error!',
                text: result.message,
                icon: 'error',
                confirmButtonText: 'OK'
            });
            document.getElementById('login-message').textContent = result.message;
        } else {
            // Handle other errors
            Swal.fire({
                title: 'Error!',
                text: result.message || 'An error occurred',
                icon: 'error',
                confirmButtonText: 'OK'
            });
            document.getElementById('login-message').textContent = result.message || 'An error occurred';
        }
    } catch (error) {
        console.error('Error:', error);
        Swal.fire({
            title: 'Error!',
            text: 'An error occurred',
            icon: 'error',
            confirmButtonText: 'OK'
        });
        document.getElementById('login-message').textContent = 'An error occurred';
    } finally {
        // Enable the submit button and hide loading indicator
        submitButton.disabled = false;
        loadingIndicator.style.display = 'none';
    }
});
