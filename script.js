urlArgs = window.location.href.split('?')[1];

window.onload = (event) => {
	if (urlArgs) {
		hymnNos = urlArgs.split(',');
		for (const no of hymnNos) {
			var listItem = document.getElementById(no);
			listItem.style.fontWeight = "bold";
			var pages = listItem.getAttribute("data").split(',');
			for (const p of pages) {
				var imageElement = document.createElement("img");
				imageElement.src = p + ".png";
				document.body.append(imageElement);
			}
		}
	}
}