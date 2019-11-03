$(document).ready(function(){


  var items = [];
  var i = 0;
  var airtable_read_endpoint = "https://api.airtable.com/v0/appu5yU2yNyYArUOD/%E5%BD%B1%E7%89%87%E9%A1%9E%E5%9E%8BFilmtypes?api_key=keymD6h94v04C3JPF";
  var dataSet = [];
  $.getJSON(airtable_read_endpoint, function(result) {
         $.each(result.records, function(key,value) {
             items = [];
                 items.push(value.fields.Fimtype);
                 items.push(value.fields.Total);
                 dataSet.push(items);
                 console.log(items);
          }); // end .each
          console.log(dataSet);

       $('#table2').DataTable( {
           data: dataSet,
           retrieve: true,
           columns: [
               { title: "Product",
                 defaultContent:""},
               { title: "Total Amount",
                   defaultContent:"" },
           ]
       } );

       var chart = c3.generate({
            data: {
                columns: dataSet,
                type : 'bar'
            },
            axis: {
              x: {label: 'Filmtype'},
              y: {label: '# of Items'}
            },
            bar: {
                title: "# of Items by Product Category:",
            }
        });

  }); // end .getJSON

}); // end button

// document ready