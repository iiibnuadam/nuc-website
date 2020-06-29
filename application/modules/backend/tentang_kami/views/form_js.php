<script>
function about_us_imgHandler() {

	var oImage	= document.getElementById("preview_about_us_img");
    var oFile = $(' #about_us_img ')[0].files[0];
    $('  #error_about_us_img  ').hide();
     
	var arr1 = new Array;
    arr1 = oFile.name.split('\\');
    var len = arr1.length;
    var img1 = arr1[len - 1];
    var filext = img1.substring(img1.lastIndexOf(".") + 1);

    
    var rFilter = /^(jpg|jpeg|png|gif)$/i;

    if (! rFilter.test(filext)) {
        $(' #error_about_us_img ').html('Tipe image TIDAK di ijinkan').show();
        $('#about_us_img').replaceWith( $('#about_us_img').val("") );
        $("#preview_about_us_img").hide();
        return;
    }

   
    if (oFile.size > 7000 * 1024) {
        $(' #error_about_us_img ').html('image size TERLALU BESAR').show();
        $('#about_us_img').replaceWith( $('#about_us_img').val("") );

        $("#preview_about_us_img").hide();
        return;
    }else if(oFile.size < 0 * 1024){
        $(' #error_about_us_img ').html('image size TERLALU KECIL').show();
        $('#about_us_img').replaceWith( $('#about_us_img').val("") );
        
        $("#preview_about_us_img").hide();
        return;
    }

	
			
	var oFReader = new FileReader();
	oFReader.readAsDataURL(document.getElementById("about_us_img").files[0]);

	oFReader.onload = function (oFREvent) {
		oImage.src = oFREvent.target.result;
		oImage.style.display="block";
		oImage.style.maxWidth = "300px";
		oImage.style.maxHeight ="300px";
	};
	
}

function fileHandler() {

    
    var oFile = $(' #file ')[0].files[0];
    $('  #error_file  ').hide();
     
    var arr1 = new Array;
    arr1 = oFile.name.split('\\');
    var len = arr1.length;
    var img1 = arr1[len - 1];
    var filext = img1.substring(img1.lastIndexOf(".") + 1);

    
    var rFilter = /^(pdf|doc|docx)$/i;

    if (! rFilter.test(filext)) {
        $(' #error_file ').html('Tipe file TIDAK di ijinkan').show();
        $('#file').replaceWith( $('#file').val("") );
        
        return;
    }

   
    if (oFile.size > 5000 * 1024) {
        $(' #error_file ').html('file size TERLALU BESAR, Maksimal 5Mb').show();
        $('#file').replaceWith( $('#file').val("") );

        
        return;
    }else if(oFile.size < 0 * 1024){
        $(' #error_file ').html('file size TERLALU KECIL').show();
        $('#file').replaceWith( $('#file').val("") );
        
        
        return;
    }

    
}

$(function () {
		 CKEDITOR.replace('about_us');
		
});
</script>




<!-- 

/* Generated via crud engine by indonesiait.com | 2017-08-11 19:00:09 */

-->