// hide the upload button into our customized button
Array.prototype.forEach.call(document.querySelectorAll(".upload-btn"), function (button) {
    const hiddenInput = button.parentElement.querySelector(".upload-input");
    
    button.addEventListener("click", function() {
        hiddenInput.click();
    });
});

// upload the first image using upload button
$(function(){
    $("#upload-first-image").change(function(event) {
        var x = URL.createObjectURL(event.target.files[0]);
        $("#first-image").attr("src", x);
        console.log(event);
    });
})

// upload the second image using upload button
$(function(){
    $("#upload-second-image").change(function(event) {
        var x = URL.createObjectURL(event.target.files[0]);
        $("#second-image").attr("src", x);
        console.log(event);
    });
})