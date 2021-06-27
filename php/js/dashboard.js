

function insert(dataType) {
    $('.progress-bar').text('0' + '%');
    $('.progress-bar').css('width', '0%');
    $('.progress-bar').css('background', 'blue');
    $('#progress').css('display', 'block');
    $.ajax({
        url: "../../functions.php",
        method: "post",
        data: 'dataType=' + dataType,
        xhr: function () {
            var xhr = new window.XMLHttpRequest();
            xhr.upload.addEventListener("progress", function (evt) {
                if (evt.lengthComputable) {
                    var percentComplete = (evt.loaded / evt.total) * 100;
                    //Do something with upload progress here
                    if (percentComplete == 100) {
                        $('.progress-bar').text("Uploaded " + percentComplete + '%');
                        $('.progress-bar').css('width', percentComplete + '%');
                        $('.progress-bar').css('background', 'green');
                    }
                    else {
                        $('.progress-bar').text(percentComplete.toFixed(1) + '%');
                        $('.progress-bar').css('width', percentComplete + '%');
                    }

                }
            }, false);
            return xhr;
        },
        success: function (data) {
            var res = JSON.parse(data)
            console.log(res);

            var dataAppend = '';
            var resData = res['list'];
            for (let i = 0; i < resData.length; i++) {
                for (let j = 0; j < resData[i].length; j++) {
                    dataAppend += `<div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top"
                                src="${resData[i][j]['image']}"
                                alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">${resData[i][j]['title']}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">${resData[i][j]['price']}</small>
                                </div>
                            </div>
                        </div>
                    </div>`;

                }

            }
            $('#data').html(dataAppend)
        },
        error: function (data) {
            var errors = data.responseJSON;
            console.log(errors);
        }
    });
}

function clearTable(dataType) {
    console.log(dataType)
    $.ajax({
        url: "../../functions.php",
        method: "post",
        data: 'dataDeleteType=' + dataType,
        success: function (data) {
            alert(data);
        },
        error: function (data) {
            var errors = data.responseJSON;
            console.log(errors);
        }
    });
}

function viewTable(dataType) {
    $.ajax({
        url: "../../functions.php",
        method: "post",
        data: 'dataReadType=' + dataType,
        success: function (data) {
            
            $('#data').html(data)
        },
        error: function (data) {
            var errors = data.responseJSON;
            console.log(errors);
        }
    });
}