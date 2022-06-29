window.addEventListener("message",e => {
    if(e.data.action == "open"){
        $('.container-main').html("");
        var data = e.data.data;
        data.forEach(vehicle => {
            var html = `
            <div class="vehicle">
                <span class="name">${vehicle.label}</span>
                <button class="select-btn" onclick = "Spawn(${vehicle.value,e.data.job})">Select</button>
            </div>
            `
            $('.container-main').append(html);
        });
        $('.container-main').slideDown();
    }
});

$(document).ready(()=> {
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $('.container-main').slideUp();
            $.post("http://ron-spawner/close",JSON.stringify({}))
        }
    };
});

function Spawn(model,job){
    $.post("http://ron-spawner/spawn",JSON.stringify({model : model,job : job}))
}
