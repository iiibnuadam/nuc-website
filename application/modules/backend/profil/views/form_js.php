<script>

function fileHandler() {

    var oImage  = document.getElementById("preview_file");
    var oFile = $(' #file ')[0].files[0];
    $('  #error_file  ').hide();
     
    var arr1 = new Array;
    arr1 = oFile.name.split('\\');
    var len = arr1.length;
    var img1 = arr1[len - 1];
    var filext = img1.substring(img1.lastIndexOf(".") + 1);

    
    var rFilter = /^(jpg|jpeg|png)$/i;

    if (! rFilter.test(filext)) {
        $(' #error_file ').html('Tipe image TIDAK di ijinkan').show();
        $('#file').replaceWith( $('#file').val("") );
        $("#preview_file").hide();
        return;
    }

   
    if (oFile.size > 7000 * 1024) {
        $(' #error_file ').html('image size TERLALU BESAR').show();
        $('#file').replaceWith( $('#file').val("") );

        $("#preview_file").hide();
        return;
    }else if(oFile.size < 1 * 1024){
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
        oImage.style.maxWidth = "200px";
        oImage.style.maxHeight ="200px";
    };
    
}
function logoHandler(id,idErr) {
    var preview = 'preview_' + id;
    var oImage  = document.getElementById(preview);
    var oFile = $('#'+id)[0].files[0];
    $('#'+idErr).hide();
     
	var arr1 = new Array;
    arr1 = oFile.name.split('\\');
    var len = arr1.length;
    var img1 = arr1[len - 1];
    var filext = img1.substring(img1.lastIndexOf(".") + 1);

    
    var rFilter = /^(jpg|jpeg|png|svg|gif)$/i;

    if (! rFilter.test(filext)) {
        $('#'+idErr).html('Tipe file TIDAK di ijinkan').show();
        $('#'+id).replaceWith( $('#'+id).val("") );
        
        return;
    }

   
    if (oFile.size > 7000 * 1024) {
        $('#'+idErr).html('file size TERLALU BESAR').show();
        $('#'+id).replaceWith( $('#'+id).val("") );

        
        return;
    }else if(oFile.size < 0 * 1024){
        $('#'+idErr).html('file size TERLALU KECIL').show();
        $('#'+id).replaceWith( $('#'+id).val("") );
        
        
        return;
    }

            
    var oFReader = new FileReader();
    oFReader.readAsDataURL(document.getElementById(id).files[0]);

    oFReader.onload = function (oFREvent) {
        oImage.src = oFREvent.target.result;
        oImage.style.display="block";
        oImage.style.maxWidth = "200px";
        oImage.style.maxHeight ="200px";
    };

	
}

	
$('#ubah').click(function(){
    $(this).hide();
    $('.ladda-button').show();
})
</script>




<!-- 

/* Generated via crud engine by indonesiait.com | 2017-08-10 12:07:28 */

-->