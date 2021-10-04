function loadComments() {

    let url = $(location).attr('origin') + "/comments/list";
    // let videoId = 1;
    let videoId = $('#videoId').val();
    let userId = $('#userId').val();
    // let userId = 2;

    $.getJSON(url,
        {
            videoId: videoId
        },
        function (response) {
            if (response.status === "SUCCESS") {
                response.data.reverse();
                $('#results').text('');

                for (let index in response.data) {
                    $('#results').append('<div style="margin-left: 5%;margin-right: 5%;margin-bottom: 3%;margin-top: 3%" class="border border-2 rounded mb-3">\n' +
                        '    <div style="margin-left: 5%;margin-right: 5%;margin-bottom: 3%;margin-top: 3%" class="row">\n' +  //comment start
                        response.data[index].user.firstName + '\n' +
                        '        <div class="col-12 border border-1 rounded mb-2">\n' +
                        '            <div class="item">\n' +
                        '                <p class="focus:outline-none text-xl font-semibold leading-5 text-gray-800">' + response.data[index].comment + '</p>\n' +
                        '            </div>\n' +
                        '            <div class="row">\n' +
                        '                <div class="col-6"></div>\n' +
                        '            </div>\n' +
                        '        </div>\n' +
                        ' <div>' +
                        (response.data[index].user.id == userId ? '<div class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-red-100 text-gray-800"><a href="javascript:void(0);" onclick="deleteComment(' + response.data[index].id + ')">Delete</a></div>' : '') +
                        '        <div id="rep' + response.data[index].id + '">\n' +
                        '            <button onclick="addField(this.id)" class="m-2 inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-green-100 text-gray-800" id="' + response.data[index].id + '">Reply</button>\n' +
                        '        </div>\n' +
                        '</div>' +
                        '    </div>\n' +        // comment end
                        '    <div id="div' + response.data[index].id + '"></div>\n' +
                        '    <div id="repliesDiv' + response.data[index].id + '" class="mb-3 row" style="margin-left: 15%;margin-right: 5%"></div>' +
                        '</div>');
                    response.data[index].replies.reverse();
                    for (let reply in response.data[index].replies) {
                        $('#repliesDiv' + response.data[index].id).append('' +
                            '    <div class="col-12 border border-1 rounded mb-2">\n' +
                            '        <div class="item">\n' +
                            '            <p class="mt-1">' + response.data[index].replies[reply].reply + '</p>\n' +
                            '        </div>\n' +
                            '        <div class="row">\n' +
                            '            <div class="col-6"></div>\n' +
                            (response.data[index].replies[reply].user.id == userId ? '<div class="col-3"><a href="javascript:void(0);" onclick="deleteReply(' + response.data[index].replies[reply].id + ')">Delete</a></div>' : '') +
                            '        </div>\n' +
                            '    </div>');
                    }
                }
                // rollback

                reStructure();
            }
        });

}

function addComment() {
    let comment = $('#commentBox').val().trim();
    // let videoId = 1;
    let videoId = $('#videoId').val();
    let url = $(location).attr('origin') + "/comments/add"

    if (comment === '') {
        $('#commentBox').val('');
        console.log('Comment field not set');
    } else {
        $.getJSON(url,
            {
                videoId: videoId,
                comment: comment
            },
            function (response) {
                if (response.status === 'SUCCESS') {
                    $('#commentBox').val('');
                    loadComments();
                }
            });
    }
}

function addReply(id) {

    let commentId = id.substring(8);
    let reply = $('#replyBox' + commentId).val().trim();
    let url = $(location).attr('origin') + "/comments/replies/add";

    if (reply === '') {
        $('#replyBox' + commentId).val('');
        console.log('Reply field not set');
    } else {
        $.getJSON(url,
            {
                commentId: commentId,
                reply: reply
            },
            function (response) {
                if (response.status === 'SUCCESS') {
                    $('#commentBox').val('');
                    loadComments();
                }
            });
    }

}

function addField(id) {
    $('#rep' + id).text('');
    $('#div' + id).append('<div class="mb-3" style="margin-left: 10%;margin-right: 5%">\n' +
        '            <textarea class="form-control" id="replyBox' + id + '" placeholder="Type your reply..." rows="3"\n' +
        '                      style="resize: none;"></textarea>\n' +
        '            <div class="grid grid-cols-4">\n' +
        '                <div class="col-start-3">' +
        '                   <button style="float: right" class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-red-100 text-gray-800" id="cancel' + id + '" onclick="cancelRep(this.id)">Cancel</button>' +
        '                   <button style="float: right" class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-green-100 text-gray-800" id="replybtn' + id + '" onclick="addReply(this.id)">Send</button>' +
        '               </div>\n' +
        '            </div>' +
        '        </div>');
}


function cancelRep(id) {
    $('#rep' + id.substring(6)).append('<button onclick="addField(this.id)" class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-green-100 text-gray-800" id="' + id.substring(6) + '">Reply</button>');
    $('#div' + id.substring(6)).text('');
}

function deleteComment(id) {

    let url = $(location).attr('origin') + "/comments/delete"

    $.getJSON(url,
        {
            commentId: id
        },
        function (response) {
            if (response.status === 'SUCCESS') {
                loadComments();
            }
        });
}

function deleteReply(id) {
    let url = $(location).attr('origin') + "/comments/replies/delete"

    $.getJSON(url,
        {
            replyId: id
        },
        function (response) {
            if (response.status === 'SUCCESS') {
                loadComments();
            }
        });
}

