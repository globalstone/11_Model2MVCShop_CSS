$(document).ready(function() {
    $("#brandLink").on("click", function(event) {
        event.preventDefault();
        self.location.href = "#";
    });

    $("#getUserLink").on("click", function(event) {
        event.preventDefault();
        var userId = "${sessionScope.user.userId}";
        self.location.href = "/user/getUser?userId=" + userId;
    });

    $("#Logout").on("click", function(event) {
        event.preventDefault();
        $(self.location).attr("href", "/user/logout");
    });

    $(".dropdown-item").on("click", function(event) {
        event.preventDefault();
        var href = $(this).attr("href");

        if (href === "#") {
            // Handle dropdown toggle
            $(this).dropdown("toggle");
        } else {
            // Redirect to the specified link
            self.location.href = href;
        }
    });
});