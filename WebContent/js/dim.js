  window.document.onkeydown = function (e)
{
    if (!e){
        e = event;
    }
    if (e.keyCode == 27){
        lightbox_close();
    }
}

function lightbox_open(){
    window.scrollTo(0,0);
    document.getElementById('light').style.display='block';
    document.getElementById('fade').style.display='block';
	//document.getElementById('register').style.display='block';
    //document.getElementById('fr').innerHTML="a.html";
}
function lightbox_open1(){
document.getElementById('register').style.display='block';

}

function lightbox_close(){
    document.getElementById('light').style.display='none';
    document.getElementById('fade').style.display='none';
	document.getElementById('register').style.display='none';
}