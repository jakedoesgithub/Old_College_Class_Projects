import React, {Component} from 'react';



class Rating extends Component {
    render(){
        return(    
            <body>
                <div id="overlay">
                </div>
                <div id="lot-window">
                    <h3 id="lot-window-header">Parking Lot</h3>
                    <br />
                    <br />
                    <p>Average rating will go here</p>
                    <p id='lot-window-recent-ratings' style=link css sheet here needs object>
                    Empty Text
                    </p>
                    <button id="lot-window-add-rating" onclick="pullUpRatingWindow()">Add Rating</button>
                    <button id='lot-window-close' onclick = "closeWindow()">Close</button>
                </div>
                <div id="rating-window">
                    <h3>Rate how full the lot is</h3>
                    <input type="radio" name = "ratingScore" value="1" checked /> 1-Mostly to completely empty.<br />
                    <input type="radio" name = "ratingScore" value="2" checked /> 2-Less than half full, but more than empty.<br />
                    <input type="radio" name = "ratingScore" value="3" checked /> 3-Half full, or half empty depending on your point of view.<br />
                    <input type="radio" name = "ratingScore" value="4" checked /> 4-More than half full, but not completely full.<br />
                    <input type="radio" name = "ratingScore" value="5" checked /> 5-I took the last empty spot. HA!<br />
                    <br />
                    <button onclick = 'submitRating()'>Submit Rating</button>
                    <button id="close-window" onclick="closeWindow()">Close</button>
                </div>
                <div id="thank-you-window">
                    <h3>Thank you for rating!</h3>
                    <button id='close-window' onclick='closeWindow()'>Close</button>
                </div>
                <img class="center" src="parkingmap.png" usemap="#image-map" alt='' />
                <map name="image-map">
                    <area target="" alt="South CEBA" title="Business Lot" onclick="mapPress('Business Lot')" coords="980,820,962,880,1110,905,1085,838" shape="poly" />
                    <area target="" alt="Patrick Taylor" title="Patrick Taylor" onclick="mapPress('Patrick Taylor Lot')" coords="797,761,824,852,941,885,973,805" shape="poly" />
                    <area target="" alt="Stadium Lot" title="Public Safety Lot" onclick="mapPress('Public Safety Lot')" coords="579,526,702,555,691,602,578,577" shape="poly" />
                    <area target="" alt="West Stadium Lot" title="West Stadium Lot" onclick="mapPress('West Stadium Lot')" coords="573,467,615,465,640,533,575,500" shape="poly" />
                    <area target="" alt="Vet School Lot" title="Vet School Lot" onclick="mapPress('Vet School Lot')" coords="243,460,357,484,341,576,365,579,352,644,335,644,335,592,297,579,224,598,222,576,284,571,292,514,238,508" shape="poly" />
                    <area target="" alt="Ag. Lot" title="Ag. Lot" onclick="mapPress('Ag. Lot')" coords="1095,728,1124,725,1133,703,1151,698,1167,654,1129,654,1129,654,1126,667,1088,670" shape="poly" />
                    <area target="" alt="Nicholson Boomerang RNL" title="Nicholson Boomerang RNL" onclick="mapPress('Nicholson Boomerang RNL')" coords="452,202,452,219,503,216,508,284,522,276,508,202" shape="poly" />
                    <area target="" alt="X79" title="X79" onclick="mapPress('X79')" coords="537,273,573,273,574,226,582,226,580,198,621,199,625,190,584,188,579,164,635,169,634,152,533,154,536,166,573,164,563,256,537,259" shape="poly" />
                    <area target="" alt="X80" title="X80" onclick="mapPress('X80')" coords="552,392,538,330,533,278,557,273,557,338" shape="poly" />
                    <area target="" alt="X84" title="X84" onclick="mapPress('X84')" coords="487,506,557,552,549,622,544,584,506,565" shape="poly" />
                    <area target="" alt="X88" title="X88" onclick="mapPress('X88')" coords="595,594,603,627,641,662,652,608" shape="poly" />
                    <area target="" alt="X116" title="X116" onclick="mapPress('X116')" coords="1149,809,1190,790,1252,806,1260,763,1260,763,1293,763,1263,817,1244,822,1195,806,1163,830" shape="poly" />
                    <area target="" alt="X166" title="X166" onclick="mapPress('X166')" coords="644,704,714,728,703,764,738,780,730,804,714,802,717,785,671,766" shape="poly" />
                    <area target="" alt="X175" title="X175" onclick="mapPress('X175')" coords="1130,863,1176,887,1144,936,1120,879" shape="poly" />
                    <area target="" alt="Burbank Liver RNL" title="Burbank Liver RNL" onclick="mapPress('Burbank Liver RNL')" coords="784,913,822,949,849,962,817,911" shape="poly" />
                </map>
                </body>
                );
                };
                };
export default Rating;