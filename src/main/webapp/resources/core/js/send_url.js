function loadVideo() {
    var xmlHttp = false;
    try {
        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (e2) {
            xmlHttp = false;
        }
    }
    if (!xmlHttp && typeof XMLHttpRequest !== 'undefined') {
        xmlHttp = new XMLHttpRequest();
    }
    var searchVideo = document.getElementById("data").value;
    xmlHttp.open('POST', '/send', true);
    var boundary = String(Math.random()).slice(2);
    xmlHttp.setRequestHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);

    xmlHttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("feedback").innerHTML +=
                wrapperResponse(searchVideo);
        }
    };
    xmlHttp.send(searchVideo);
}

function wrapperResponse(urlVideo) {
    return "<div>" + urlVideo + "</div>"
}
