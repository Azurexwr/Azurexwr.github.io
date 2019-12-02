//map
var mapboxTiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {attribution: 'Map data &copy; <a href="https://openstreetmap.org">OpenStreetMap</a>', maxZoom: 18,});

var map = L.map('mapid')
      .addLayer(mapboxTiles)
      .setView([22.287111, 114.191667], 13);

layerGroup = L.layerGroup().addTo(map);

      // create custom icon
var xgdi = L.icon({
iconUrl: 'pic/icon.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

var jli = L.icon({
iconUrl: 'pic/icon1.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

var xji = L.icon({
iconUrl: 'pic/icon2.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

var fivepi = L.icon({
iconUrl: 'pic/icon5.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

var fourpi = L.icon({
iconUrl: 'pic/icon4.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

var threepi = L.icon({
iconUrl: 'pic/icon3.png',
iconSize: [30, 40], // size of the icon
popupAnchor: [0,-15]
});

//香港岛
var items = [];
var airtable_read_endpoint = "https://api.airtable.com/v0/appGyicFYWqWwNvwL/%E9%A6%99%E6%B8%AF%E5%B3%B6?api_key=keyMKBpzuSeqRV0SV";

var data = [];
$.getJSON(airtable_read_endpoint, function(result) {
       $.each(result.records, function(key,value) {
           items = {};
               items["name"] = value.fields.香港島;
               items["image_url"] = value.fields.img_url;
               items["latitud"] = value.fields.lat;
               items["longitud"] = value.fields.ling;
               items["inout"] = value.fields.室內外;
               data.push(items);
               console.log(items);
        }); // end .each
}); // end getJSON

function show_districts1(){
  for (var i in data) {
      var latlng = L.latLng({ lat: data[i].latitud, lng: data[i].longitud });
      L.marker( latlng, {icon: xgdi})
          .bindPopup('<img src="' + data[i].image_url+'" width = "80px"><br>'+data[i].name)
          .addTo(layerGroup);
  }
}

//九龙
var map2_jl = [];
var airtable_read_endpoint = "https://api.airtable.com/v0/appGyicFYWqWwNvwL/%E4%B9%9D%E9%BE%8D?api_key=keyMKBpzuSeqRV0SV";

var datajl = [];
$.getJSON(airtable_read_endpoint, function(result) {
       $.each(result.records, function(key,value) {
        map2_jl = {};
        map2_jl["name"] = value.fields.Name;
        map2_jl["image_url"] = value.fields.img_url;
        map2_jl["latitud"] = value.fields.lat;
        map2_jl["longitud"] = value.fields.ling;
        map2_jl["inout"] = value.fields.室內外;
        datajl.push(map2_jl);
               console.log(map2_jl);
        }); // end .each
}); // end getJSON

function show_districts2(){
  for (var i in datajl) {
      var latlng = L.latLng({ lat: datajl[i].latitud, lng: datajl[i].longitud });
      L.marker( latlng, {icon: jli})
          .bindPopup('<img src="' + datajl[i].image_url+'" width = "80px"><br>'+datajl[i].name)
          .addTo(layerGroup);
  }
}

//新界
var map_xj = [];
var airtable_read_endpoint = "https://api.airtable.com/v0/appGyicFYWqWwNvwL/%E6%96%B0%E7%95%8C?api_key=keyMKBpzuSeqRV0SV";

var dataxj = [];
$.getJSON(airtable_read_endpoint, function(result) {
       $.each(result.records, function(key,value) {
           map_xj = {};
           map_xj["name"] = value.fields.新界;
           map_xj["image_url"] = value.fields.img_url;
           map_xj["latitud"] = value.fields.lat;
           map_xj["longitud"] = value.fields.ling;
           map_xj["inout"] = value.fields.室內外;
               dataxj.push(map_xj);
               console.log(map_xj);
        }); // end .each
}); // end getJSON

function show_districts3(){
  for (var i in dataxj) {
      var latlng = L.latLng({ lat: dataxj[i].latitud, lng: dataxj[i].longitud });
      L.marker( latlng, {icon: xji})
          .bindPopup('<img src="' + dataxj[i].image_url+'" width = "80px"><br>'+dataxj[i].name)
          .addTo(layerGroup);
  }
}

