var repairPrice;
var washPrice;
 
 
 window.addEventListener('message', function (event) {
     if(event.data.type === "ui"){
         repairPrice = event.data.repairPrice
         washPrice = event.data.washPrice
         $(".wrapper").show();
         $(".container").slideDown();
     }
  })

  

 $(document).ready(()=>{

    $(".repair-btn").hover(function(){
        $(".wrapper").show();
        $(".repairPrice").fadeIn();
        $(".repairPrice").html("Repair price: " + repairPrice + "$");
    },
    function(){
        $('.wrapper').hide();
        $(".repairPrice").fadeOut();
    }
    );

    $(".wash-btn").hover(function(){
        $(".wrapper").show();
        $(".washPrice").fadeIn();
        $(".washPrice").html("Wash price: " + washPrice + "$");
    },
    function(){
        $('.wrapper').hide();
        $(".washPrice").fadeOut();
    }
    );

     $(".repair-btn").on("click", function(){
         $('.wrapper').hide();
         $('.container').slideUp();
         $.post('http://ron-repair/repair',JSON.stringify({}))
     });


     $(".wash-btn").on("click", function(){
         $('.wrapper').hide();
         $('.container').slideUp();
         $.post('http://ron-repair/wash',JSON.stringify({}))
     });

//      $(".container").hover(function(){
//          $(".container").css("height", 150);
//      },
//      function(){
//          $(".container").css("height", 40);
//      }
//      );
  });


 document.onkeyup = function (data) {
     if (data.which == 27) {
        $(".wrapper").show();
        $(".container").slideUp();

       $.post('http://ron-repair/close', JSON.stringify({}));
     }
 };

