

        <cfscript>
        /* BEGIN - get uploaded image file name */


        uploadedFileName = "";


        getPartsArray = form.getPartsArray();


        arrayIndex = arrayFind(getPartsArray, 


            function(s) 


                {if(left(s, 38) == "com.oreilly.servlet.multipart.FilePart" ) 


                return true; return false;});


        if ( arrayIndex GT 0 ) {


            uploadedFileName = getPartsArray[arrayIndex].getFileName();


        }


        /* END - get uploaded image file name */ 
        </cfscript>

