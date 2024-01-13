/**
 * 
 */

  
  
    function changeBackground(imageUrl) {
    var scroll = document.getElementById('scroll-container');
    if (scroll) {
        scroll.style.backgroundImage = 'url(' + imageUrl + ')';
    }
    
		else{
			scroll.style.backgroundImage = 'url("images/container.webp")';
		}
	
    }
      function playVideo(frameId, overlayId, videoUrl) {
        var frame = document.getElementById(frameId);
        var overlay = document.getElementById(overlayId);

        if (frame && overlay) {
            // Set the source of the iframe in the overlay
            frame.src = videoUrl;

            // Show the overlay
            overlay.style.display = 'block';
        }
    }
     function closeVideo(frameId, overlayId) {
        var frame = document.getElementById(frameId);
        var overlay = document.getElementById(overlayId);

        if (frame && overlay) {
            // Reset the source of the iframe
            frame.src = '';

            // Hide the overlay
            overlay.style.display = 'none';
        }
    }
  /* function autoScroll() {
	   var scrollcount  = 2;
	   
	   var scrollContainer = document.getElementById('scroll-container');
	    if (scrollContainer) {
        scrollContainer.scrollBy(0, scrollcount);
        var interval=setInterval(autoScroll,50);
        
        setTimeout(function(){
			clearInterval(interval);
		},5000)//5second after top
    }
}
*/
