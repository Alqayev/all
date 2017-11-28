/**
 * Created by TALEH on 08.07.2016.
 */
$(function () {
       // Get the modal
       var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
       var img = document.getElementById('myImg');
       var modalImg = document.getElementById("img01");
       var captionText = document.getElementById("caption");
       img.onclick = function(){
           modal.style.display = "block";
           modalImg.src = this.src;
           modalImg.alt = this.alt;
           captionText.innerHTML = this.alt;
       }

// Get the <span> element that closes the modal
       var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
       span.onclick = function() {
           modal.style.display = "none";
       }

   })

// <img id="myImg" src="upload/${cs.productPicture}" alt="${cs.productName}" width="300" height="200">
//
//     <!-- The Modal -->
// <div id="myModal" class="modal">
//
//     <!-- The Close Button -->
// <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>
//
// <!-- Modal Content (The Image) -->
// <img class="modal-content" id="img01">
//
//     <!-- Modal Caption (Image Text) -->
// <div id="caption"></div>
//     </div>