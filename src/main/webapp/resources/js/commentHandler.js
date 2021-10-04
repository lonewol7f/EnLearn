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


                $('#results').append(
                    response.data.map((singleComment) => {
                        let replyarr = []

                        singleComment.replies.map((Sreply) => {
                            replyarr.push(`
                        <div class="ml-8 bg-gray-100">
                            <p tabindex="0" class="focus:outline-none text-sm font-semibold leading-normal text-gray-800">${Sreply.user.firstName} ${Sreply.user.lastName}</p>
                            <p tabindex="0" class="focus:outline-none pt-1 text-sm leading-4 text-gray-600">
                                   ${Sreply.reply}
                            </p>
                        <div class="">
                          <span class=" m-2 inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-green-100 text-gray-800">
                          Reply
                          </span>
                         <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-red-100 text-gray-800">
                          Delete
                          </span>
                        </div>
                        </div>`)
                        })

                        return `
                        <div class="bg-gray-200 w-56 ">
                         <div class="mt-6 flex">
                        <div class="pl-3">
                         <p tabindex="0" class="focus:outline-none text-sm font-semibold leading-normal text-gray-800">${singleComment.user.firstName} ${singleComment.user.lastName}</p>
                            <span class="focus:outline-none pt-1 text-base leading-4 text-gray-800">${singleComment.comment}</span>
                            <div class="pt-1 mb-2">
                                <span class="m-2 inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-green-100 text-gray-800"> Reply </span>
                                <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-red-100 text-gray-800"> Delete </span>
                            </div>
                              ${replyarr.join(' ')}
                        </div>
                        </div>
                        </div>
                       `
                    })
                )
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
        '            <div class="row mt-3">\n' +
        '                <div class="col-6"></div>\n' +
        '                <div class="col-3"><button style="float: right" class="btn btn-danger" id="cancel' + id + '" onclick="cancelRep(this.id)">Cancel</button></div>\n' +
        '                <div class="col-3"><button style="float: right" class="btn btn-success" id="replybtn' + id + '" onclick="addReply(this.id)">Send</button></div>\n' +
        '            </div>' +
        '        </div>');
}


function cancelRep(id) {
    $('#rep' + id.substring(6)).append('<button onclick="addField(this.id)" class="btn btn-info" id="' + id.substring(6) + '">Reply</button>');
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

