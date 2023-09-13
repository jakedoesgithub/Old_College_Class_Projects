


class LotWindow
{

	constructor(lot)
	{
		this.lot = lot;
		this.overlay = document.getElementById('overlay');
		this.lotInfoWindow = document.getElementById('lot-window');
		this.header = document.getElementById('lot-window-header');
		this.recentRatings = document.getElementById('lot-window-recent-ratings');
		this.ratingWindow = document.getElementById('rating-window');
		this.thankYouWindow = document.getElementById('thank-you-window');

	}
	getLot()
	{
		return this.lot;
	}
	setLot(lot)
	{
		this.lot = lot;
	}
}

var lotWindow;

class howLongAgo {
	constructor(time)
	{
		this.diff = new Date().getTime() - time.getTime();
	}

	howLongAgoHours()
	{
		return Math.round(this.diff/3600000);
	}

	howLongAgoMinutes()
	{
		let num = howLongAgoHours();
		return Math.floor(num/60000);
	}
	howLongAgoSeconds()
	{
		let num = howLongAgoMinutes();
		return Math.floor(num/1000);
	}
	howLongAgoToString()
	{
		let hours = howLongAgoHours();
		let minutes = Math.floor(this.diff%3600000);
		let seconds = Math.floor(this.diff%216000000);
		return hours.toString() + " hours, " + minutes.toString() + " minutes, " + seconds.toString() + " seconds ago";
	}
}

/* Gives a string representation of how long ago a Date class is.
	Ex: 45 minutes, 2 seconds ago; 1 hour, 23 miutes, 31 seconds ago */
function howLongAgoString(time)
{
	let difInMilis = new Date().getTime() - time.getTime();
	let difInSeconds = difInMilis / 1000;
	let hours = Math.floor(difInSeconds / 3600);
	difInSeconds = difInSeconds % 3600;
	let minutes = Math.floor(difInSeconds / 60);
	difInSeconds = difInSeconds % 60;
	let seconds = Math.floor(difInSeconds);
	hours = (hours == 0) ? "" : hours.toString() + " hour, ";
	minutes = (minutes == 0) ? "" : (minutes == 1) ? minutes.toString() + " minute, " : minutes.toString() + " minutes, ";
	seconds = seconds.toString() + " seconds ago";
	return hours + minutes + seconds
}


function getRecentRatings(lot)
	{
		let ratingsText = document.getElementById('lot-window-recent-ratings');
		ratingsText.innerHTML = "<br><br>Recent ratings: <br><br>";
		db.collection('Parking Lot').doc(lot).collection('Rating').orderBy('time').get().then((snapshot) => {
			let i = snapshot.size - 1;
			maxRatings = 10;//maximum amount of ratings to show in the log
			while (i >= 0 && maxRatings > 0)
			{
				let doc = snapshot.docs[i];
				let data = doc.data();
				let timeDif = new howLongAgo(data.time.toDate());
				if (timeDif.howLongAgoHours() <= 1)
				{
					ratingsText.innerHTML += "Score: " + data.score;
					timeDif = howLongAgoString(data.time.toDate());
					ratingsText.innerHTML += " - " + timeDif + "<br>";
				}
				i--;
				maxRatings--;
			};
		});
		let averageText = document.getElementById('average');
		var obj = lots.find(o => o.label == lot);
		if(obj.averageRating == null)
			averageText.innerHTML = "Current estimated occupancy: No recent ratings."
		else
			averageText.innerHTML = "Current estimated occupancy: " + ((obj.averageRating-1)*25).toFixed(1) + "%";
		averageText.style = "position: fixed; top: 33vh; right: 18vw; font-size: 135%; animation-name: fade-in; animation-duration: .2s;";
	}

/* function averageRating(lot) //naive average - unused now.
{
	db.collection('Parking Lot').doc(lot).collection('Rating').orderBy('time').get().then((snapshot) => {
			var average = 0.0;
			var total = 0;
			let i = snapshot.size - 1;
			maxRatings = 100;//maximum amount of ratings to show in the log
			while (i >= 0 && maxRatings > 0)
			{
				let doc = snapshot.docs[i];
				let data = doc.data();
				let timeDif = new howLongAgo(data.time.toDate());
				let timeDifHours = timeDif.howLongAgoHours();
				if (timeDifHours<1)
				{
					average += parseFloat(data.score);
					total++;
				};
				i--;
				maxRatings--;
			};
			average = average/total;
			var obj = lots.find(o => o.label == lot);
			obj.averageRating = average;
		});
} */
/* 	Copy from lotsarray, uneeded duplicated code.

	function setWeightedAverage(lot) {
	db.collection('Parking Lot').doc(lot).collection('Rating').orderBy('time').get().then((snapshot) => {
			var average = Math.NaN;
			if(snapshot.size >= 100)
			{
				var i = snapshot.size-100;
			}
			else
			{
				var i=0;
			}
			while(i<snapshot.size)
			{
				let doc = snapshot.docs[i];
				let data = doc.data();
				let rating = parseFloat(data.score);
				let timeDif = new howLongAgo(data.time.toDate());
				let timeDifHours = timeDif.howLongAgoHours();
				if (timeDifHours<1)
				{
					if(average == Math.NaN)
					{
						average = rating;
					}
					else
					{
						let meanIncrement = .3 * (rating - average);
						let newAverage = average + meanIncrement;
						average = newAverage;
					}
				}
				i++;
			}
			var obj = lots.find(o => o.label == lot);
			obj.averageRating = average;
		});
		console.log("ratings");
} */

/* class ExponentialMovingAverage //weighted average found on https://dev.to/nestedsoftware/exponential-moving-average-on-streaming-data-4hhl which I used to create weighted average.
{
    constructor(alpha, initialMean) //constructor
	{
        this.alpha = alpha
        this.mean = !initialMean ? 0 : initialMean
    }

    update(newValue)
	{
        const meanIncrement = this.alpha * (newValue - this.mean)

        const newMean = this.mean + meanIncrement

        this.mean = newMean
    }
	getMean() {
		return this.mean;
	}
} */

/* Triggered whenever one of the lot polygons on the map is clicked.
	It opens up the lot window, showing the recent and average ratings. */
function mapPress(lot)
{
	lotWindow = new LotWindow(lot);
	lotWindow.overlay.style.display = "block";

	lotWindow.lotInfoWindow.style.display = "block";
	lotWindow.header.style.display = "block";
	lotWindow.header.innerHTML = lot;
	lotWindow.header.style = "font-size: 175%; margin: auto; position: relative; top: 3vh"
	getRecentRatings(lot);
}

/* Opens up the rating window, where users can rate a parking lot.
	Triggered whenever the player presses the add rating button */
function pullUpRatingWindow()
{
	lotWindow.overlay.style.display = "block";

	lotWindow.lotInfoWindow.style.display = "none";
	lotWindow.ratingWindow.style.display = "block";
}

/* Opens the thank you window, where the users get confirmation their
	rating went through. Triggered whenever a user submits a rating. */
function pullUpThankYouWindow()
{
	lotWindow.ratingWindow.style.display = "none";
	lotWindow.thankYouWindow.style.display = "block";
	lotWindow.header.innerHTML = "Thank you for rating!";
}

/* Closes all windows. Triggered when the player closes the window. */
function closeWindow()
{

	lotWindow.overlay.style.display = "none";
	lotWindow.ratingWindow.style.display = "none";
	lotWindow.lotInfoWindow.style.display = "none";
	lotWindow.header.style.display = "none";
	lotWindow.thankYouWindow.style.display = "none";
	lotWindow = null;
	document.getElementById('closing-window').style.display = "block";
	setTimeout(endWindowClosingAnimation, 190);
}

/* Part of the window closing animation. After the animation is complete,
	the display of the animation is set to 'none' */
function endWindowClosingAnimation()
{
	document.getElementById('closing-window').style.display = "none";
}

/* Submits a rating to the database. Triggered on the rating window
	when a user presses the submit rating button. */
function submitRating()
{

	//Obtaining the selected radio's value.
	var scoreVal;
	var radios = document.getElementsByName('ratingScore');
	for (var i = 0, length = radios.length; i < length; i++)
	{
		if (radios[i].checked)
		{
			scoreVal = radios[i].value;
		}
	}

	//Adding the obtained value to the database.
	db.collection('Parking Lot').doc(lotWindow.getLot()).collection('Rating').add({
			score: parseInt(scoreVal, 10),
			time: new Date(),
			user_id: "not defined yet"
			});

	setWeightedAverage(lotWindow.getLot());
	pullUpThankYouWindow();
	setTimeout(loadLots,1500);
}

//Colors the lots according to their average rating
function loadLots()
{
	for (var i = 0; i < lotsOnMap.length; i++)
		lotsOnMap[i].polygon.setStyle({fillOpacity: 0.75, color: "black", fillColor: numberToColorScale(parseFloat(lots[i].averageRating))});
}

//Simply removes the loading text.
function doneLoading()
{
	document.getElementById('loading').style.display = "none";
}
