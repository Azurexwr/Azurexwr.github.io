$(document).ready(function(){

    $("button#hide_h2").click(function() {
        $("h2").hide(500);
    });

    $("button#show_h2").click(function() {
        $("h2").show(300);
        $("h2").css("color","blue");
        $("h2").html("You clicked me hard.");
    });

    $("button#clear_screen").click(function() {
        var $x = $("container");
        $x.empty();
    });

    $("button#get_data").click(function() {
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appu5yU2yNyYArUOD/90%E5%B9%B4%E4%BB%A3%E9%A6%99%E6%B8%AF%E9%9B%BB%E5%BD%B190s%20Hong%20Kong%20Films?api_key=keyIfvU8eNk2Sd81x";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result) {
               $.each(result.records, function(key,value) {
                   items = [];
                       items.push(value.fields.film_name);
                       items.push(value.fields.film_url);
                       items.push(value.fields.film_poster);
                       items.push(value.fields.more_pics_url);
                       items.push(value.fields.film_score);
                       items.push(value.fields.film_director);
                       items.push(value.fields.film_director_url);
                       items.push(value.fields.film_film_actors);
                       items.push(value.fields.film_filmtype);
                       items.push(value.fields.film_date);
                       items.push(value.fields.film_length);
                       items.push(value.fields.film_plot);
                       items.push(value.fields.film_awards_name);
                       dataSet.push(items);
                       console.log(items);
                }); // end .each
                console.log(dataSet);

             $('#table1').DataTable( {
                 data: dataSet,
                 retrieve: true,
                 columns: [
                     { title: "film_name",
                       defaultContent:""},
                     { title: "film_url",
                         defaultContent:"" },
                     { title: "film_poster",
                       defaultContent:"" },
                     { title: "more_pics_url",
                       defaultContent:""},
                     { title: "film_score",
                         defaultContent:""},
                     { title: "film_director",
                       defaultContent:""},
                     { title: "film_director_url",
                       defaultContent:""},
                     { title: "film_film_actors",
                       defaultContent:""},
                     { title: "film_filmtype",
                       defaultContent:""},
                     { title: "film_date",
                       defaultContent:""},
                     { title: "film_length",
                       defaultContent:""} ,
                     { title: "film_plot",
                       defaultContent:""} , 
                     { title: "film_awards_name",
                       defaultContent:""} ,
                 ]
             } );
        }); // end .getJSON
     }); // end button

}); // document ready
