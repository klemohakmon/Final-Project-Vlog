$(document).ready(function () {
    Swal.fire({
        title: 'Welcome to bottles beach',
        text: "You successfully submitted the form",
        icon: 'success',
        showCancelButton: false,
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'Great, show me the site!'
    }).then((result) => {
        if (result.isConfirmed) {
            location = "HomePage.aspx"
        }
    })


;
});