function addNotificationReply() {

    let commentId = $('#commentIdVal').val();
    let reply = $('#reply').val().trim();
    let url = $(location).attr('origin') + "/comments/replies/add";
    let modal = document.getElementById("myModal");

    if (reply === '') {
        $('#reply').val('');
        console.log('Reply field not set');
    } else {
        $.getJSON(url,
            {
                commentId: commentId,
                reply: reply
            },
            function (response) {
                if (response.status === 'SUCCESS') {
                    $('#reply').val('');
                    modal.style.display = "none";
                }
            });
    }

}

