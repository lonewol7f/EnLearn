function loadComments() {

    var url = $(location).attr('origin') + "/comments/list"
    var videoId = 1;

    $.getJSON(url,
        {
            videoId: videoId
        },
        function (response) {
            response.data.reverse();
            // rollback

            reStructure();
        });

}

function addComment() {

}

function sentReply(id) {

}

