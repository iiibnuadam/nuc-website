<script>
function fileHandler() {

	var oImage	= document.getElementById("preview_file");
    var oFile = $(' #file ')[0].files[0];
    $('  #error_file  ').hide();
     
	var arr1 = new Array;
    arr1 = oFile.name.split('\\');
    var len = arr1.length;
    var img1 = arr1[len - 1];
    var filext = img1.substring(img1.lastIndexOf(".") + 1);

    
    var rFilter = /^(png|jpg|jpeg|jpg|jpeg)$/i;

    if (! rFilter.test(filext)) {
        $(' #error_file ').html('Tipe image TIDAK di ijinkan').show();
        $('#file').replaceWith( $('#file').val("") );
        $("#preview_file").hide();
        return;
    }

   
    if (oFile.size > 500 * 1024) {
        $(' #error_file ').html('image size TERLALU BESAR').show();
        $('#file').replaceWith( $('#file').val("") );

        $("#preview_file").hide();
        return;
    }else if(oFile.size < 0 * 1024){
        $(' #error_file ').html('image size TERLALU KECIL').show();
        $('#file').replaceWith( $('#file').val("") );
        
        $("#preview_file").hide();
        return;
    }

	
			
	var oFReader = new FileReader();
	oFReader.readAsDataURL(document.getElementById("file").files[0]);

	oFReader.onload = function (oFREvent) {
		oImage.src = oFREvent.target.result;
		oImage.style.display="block";
		oImage.style.maxWidth = "512px";
		oImage.style.maxHeight ="512px";
	};
	
}
	
$(function () {
		$(".textarea").wysihtml5();

});
</script>




<!-- 

/* Generated via crud engine by indonesiait.com | 2019-03-11 11:44:37 */

-->