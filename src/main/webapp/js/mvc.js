function showSuccessMessage(html) {
    $("#messages").removeClass("alert-danger");
    $("#messages").addClass("alert-info");
    $("#messages").html(html).show(800).delay(4000).hide(1000);
}

function showErrorMessage(html) {
    $("#messages").removeClass("alert-info");
    $("#messages").addClass("alert-danger");
    $("#messages").html(html).show(800).delay(4000).hide(1000);
}

function validPlaceError(error, element) {
    $(element).parent().addClass("has-error");
    $(element).parent().children(".help-block").text($(error).text());
}

function validPlaceSuccess(label, element) {
    $(element).parent().removeClass("has-error");
    $(element).parent().children(".help-block").empty();
}

function closeForm() {
    $("#formPanel").empty();
    $('.addBtn').show();
}


function saveEntity(entity) {
    $("#formPanel").empty();
    $("#formPanel").load(entity);
    $(".addBtn").hide();
}


function editEntity(id) {
    $("#formPanel").empty();
    $("#formPanel").load("student/" + id);
    $(".addBtn").hide();
}

function editLesson(id) {
    $("#formPanel").empty();
    $("#formPanel").load("lesson/" + id);
    $(".addBtn").hide();
}


function deleteStudent(id) {
    $.ajax({
        url: "deleteStd/" + id,
        type: "post",
        success: function (html) {
            $('#studentTable').DataTable().ajax.reload(null, false);
            showSuccessMessage(html);
        },
        error: function (xhr) {
            if (xhr.status == 409) {
                showErrorMessage(xhr.responseText);
            }
        }
    });

}

function deleteLesson(id) {
    $.ajax({
        url: "deleteLesson/" + id,
        type: "post",
        success: function (html) {
            $('#lessonTable').DataTable().ajax.reload(null, false);
            showSuccessMessage(html);
        },
        error: function (xhr) {
            if (xhr.status == 409) {
                showErrorMessage(xhr.responseText);
            }
        }
    });

}

function putStudent(id) {
    $("#formPanel").empty();
    $("#formPanel").load("putStudent/" + id);
    $(".addBtn").hide();
}


