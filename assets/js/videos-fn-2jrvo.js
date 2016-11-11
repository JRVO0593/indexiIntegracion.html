

jQuery.fn.GetVideos = function(){
	//consumo api
	var path 	= "http://multimedia.telesurtv.net/api/clip/?callback=?";
	var categoria	= "";
	var descripcion = "";
	var fecha	= "";
	var $FRAME	= "";
	var $ASIDE	= "";
	var tipo	= "";
	//cantidad de videos sugeridos
	$.getJSON(path,{
		detalle:"completo",
		seleccionado:"true",
		ultimo:"5"
	})
	.done(function(data){
		$.each(data,function(i){
	
			categoria_slug	= (data[i].categoria==null?'':data[i].categoria.slug);
			categoria_nombre= (data[i].categoria==null?'':data[i].categoria.nombre);
			tipo		= (data[i].tipo==null?'':data[i].tipo.slug); 
			categoria	= (data[i].categoria==null?'':'<a href="http://videos.telesurtv.net/videos/noticia'+tipo+'/categoria/'+categoria_slug+'">'+categoria_nombre+'</a> <span>&middot;</span> ');
			fecha		= GetVideoDate(data[i].fecha);
			titulo		= data[i].titulo;
			duracion	= GetVideoDuration(data[i].duracion);
			imagen		= data[i].thumbnail_gigante;
			video_slug	= data[i].slug;
			video_file	= data[i].archivo_url;
			url		= data[i].url;
			navegador_url   = data[i].navegador_url;
			watchVideoFN	= "$().watchVideo(\'"+video_file+"\',\'"+imagen+"\',\'"+categoria_slug+"\',\'"+categoria_nombre+"\',\'"+tipo+"\',\'"+fecha+"\',\'"+titulo+"\',\'"+video_slug+"\');";
				
			if(i==0){
				$FRAME  = '<article class="important">';
				$FRAME += '<hgroup id="VideohGroup"></hgroup>';
				$FRAME += '<div class="wpVid" id="VideoDestacado"></div>'; 
				$FRAME += '</article>'
				$ASIDE += '<div class="aside">';
				
				VideoInfo = GetVideoInfo(categoria_slug,categoria_nombre,tipo,fecha,titulo,video_file,video_slug);
			}
			//videos sugeridos
			$ASIDE += '<ul class="spost_nav ; col-xs-12 col-sm-6 col-md-4 col-lg-5">';
			$ASIDE += '<li>';
			$ASIDE += '<div class=" media wow fadeInDown" >'; // style="float:left">
			//$ASIDE += '<a href="javascript:;" onclick="'+watchVideoFN+'"><img src="/arte/ico-play.png" alt="Telesur" class="icoPlay"></a>';
			$ASIDE += '<a class="media-left" href="javascript:;" onclick="'+watchVideoFN+'"><img src="'+imagen+'" height="130" alt="Telesur"></a>';
			
			$ASIDE += '<div class="media-body">';
			$ASIDE += '<h6>'+categoria+'<span>'+duracion+'</span></h6>';
			$ASIDE += '<h5><a class="catg_title" href="javascript:;" onclick="'+watchVideoFN+'">'+titulo.slice(0,70)+'</a></h5>';
			$ASIDE += '</div>';
			$ASIDE += '</div>';
			$ASIDE += '</li>';
			$ASIDE += '</ul>';
			
			if(i==data.length){
				$ASIDE += '</div>';
			}
	
		});//END EACH
		$("#VideosContenedor").append($FRAME+$ASIDE);

		jwplayer("VideoDestacado").setup({
			file: data[0].archivo_url,
			image: data[0].thumbnail_gigante,
			width: "100%",
			aspectratio: "4:2"
		});
		
		$("#VideohGroup").html(VideoInfo);

	});//END DONE
	
	// $().GetCorresponsales();
	
}//END GetVideos 
	
//(function(){
jQuery.fn.GetCorresponsales = function(){
	var path 	= "http://multimedia.telesurtv.net/api/clip/?callback=?";
	var categoria	= "";
	var fecha	= "";
	var descripcion = "";
	var $LIST	= "";

// --------------------------------------- CORRES--------------------------------------------------	

$.getJSON(path,{
		detalle:"completo",
		corresponsal:"no_es_nulo",
		ultimo:"6"
	})
	.done(function(data){
		$.each(data,function(i){
	
			corresponsal	= data[i].corresponsal.nombre;
			titulo		= data[i].titulo;
			imagen		= data[i].thumbnail_mediano;
			video_slug	= data[i].slug;
			corresp_slug	= data[i].corresponsal.slug;
			
			$LIST  = '<div class="single_post_content_left">';
			$LIST += '<ul class="spost_nav">';
			$LIST += '<li>';
			$LIST += '<div class="media wow fadeInDown" id="Corresponsal-'+i+'" style="margin-left:8px;">';
			$LIST += '<a class="media-left" href="http://multimedia.telesurtv.net/web/telesur/#!video/noticia/'+video_slug+'" target="_blank"><img src="'+imagen+'" height="60" alt="Telesur"></a>';	

			$LIST += '<div class="media-body">';
			$LIST += '<h5><a class="catg_title" href="http://multimedia.telesurtv.net/web/telesur/#!video/noticia/'+video_slug+'" target="_blank">'+titulo.slice(0,70)+'</a></h5>';
			$LIST += '<a href="http://multimedia.telesurtv.net/web/telesur/lista/noticia/corresponsales--'+corresp_slug+'" target="_blank" class="autor">'+corresponsal+'</a>';
			$LIST += '</div>';
			$LIST += '</div>';			
			$LIST += '</li>';
			$LIST += '</ul>';
			$LIST += '</div>';	
			
			$("#CorresContenedor").append($LIST);
			
		});//END EACH
		
	});//END DONE
	
}//END GetCorresponsales 

//(function(){
jQuery.fn.GetCorresponsalINT = function(){
	var path 	= "http://multimedia.telesurtv.net/api/clip/?callback=?";
	var categoria	= "";
	var fecha	= "";
	var descripcion = "";
	var $LIST	= "";
	
	$.getJSON(path,{
		detalle:"completo",
		corresponsal:"no_es_nulo",
		ultimo:"4"
	})
	.done(function(data){
		$.each(data,function(i){
	
			corresponsal	= data[i].corresponsal.nombre;
			titulo		= data[i].titulo;
			imagen		= data[i].thumbnail_mediano;
			video_slug	= data[i].slug;
			corresp_slug	= data[i].corresponsal.slug;
			
			$LIST  = '<li><article class="videoINT">';
			$LIST += '<div class="wpSmallImg">';
			$LIST += '<div id="Corresponsal-'+i+'">';
			//$LIST += '<a href="http://multimedia.telesurtv.net/web/telesur/#!es/video/'+video_slug+'" target="_blank"><img src="/arte/ico-play.png" alt="Telesur" class="icoPlay"></a>';
			$LIST += '<a href="http://multimedia.telesurtv.net/web/telesur/#!es/video/'+video_slug+'" target="_blank"><img src="'+imagen+'" height="82" alt="Telesur"></a>';
			$LIST += '</div>';
			$LIST += '</div>';
			$LIST += '<div class="overflow">';
			$LIST += '<h5><a href="http://multimedia.telesurtv.net/web/telesur/#!es/video/'+video_slug+'" target="_blank">'+titulo.slice(0,70)+'</a></h5>';
			$LIST += '<a href="http://multimedia.telesurtv.net/web/telesur/#!es/lista/noticia/corresponsales--'+corresp_slug+'" target="_blank" class="autor">'+corresponsal+'</a>';
			$LIST += '</div>';
			$LIST += '</article></li>';
							
	
			
			
			$("#videoCorres").append($LIST);
			
		});//END EACH
		
	});//END DONE
	
} //END GetCorresponsales interna

jQuery.fn.watchVideo = function(file,image,categoria_slug,categoria_nombre,tipo,fecha,titulo,video_slug){

	jwplayer("VideoDestacado").load({
		file: file,
		image: image
	});
	VideoInfo = GetVideoInfo(categoria_slug,categoria_nombre,tipo,fecha,titulo,video_slug);
	$("#VideohGroup").html(VideoInfo);
	
}

jQuery.fn.watchCorresponsal = function(i,slug){
	$("#Corresponsal-"+i).empty();
	var telesur_explicito = OMPlayer.setup({
		id: 'Corresponsal-'+i,
		slug: slug,
		width: 300, height: 150
						});
}

function GetVideoInfo(categoria_slug,categoria_nombre,tipo,fecha,titulo,video_slug){
	$hGroup = '<h6>';
	if(categoria_nombre != ""){
		$hGroup += '<a href="http://videos.telesurtv.net/videos/'+tipo+'/categoria/'+categoria_slug+'">'+categoria_nombre+'</a> <span>&middot;</span> ';
	}
	$hGroup += '<span>'+fecha+'</span>';
	$hGroup += '</h6>';
	//$hGroup += '<h3><a href="http://multimedia.telesurtv.net/web/telesur/#!es/video/'+video_slug+'" TARGET="_blank">'+titulo+'</a></h3>';
	$hGroup += '<h4><a href="'+navegador_url+'" TARGET="_blank">'+titulo+'</a></h4>';

	return $hGroup;
}

function GetVideoDate(raw){
	var matches = raw.match(/(\d+)-(\d+)-(\d+) (\d+):(\d+):(\d+)/);
	/*return new Date( matches[1], // año
	(+matches[2])-1, // mes
	matches[3], // día
	matches[4], // hora
	matches[5], // minuto
	matches[6]); //segundo*/
	return matches[3]+" de "+GetMonthName((+matches[2])-1);
}

function GetMonthName(month){
	switch(month){
		case 0:
			result="Enero";
		break;
		case 1:
			result="Febrero";
		break;
		case 2:
			result="Marzo";
		break;
		case 3:
			result="Abril";
		break;
		case 4:
			result="Mayo";
		break;
		case 5:
			result="Junio";
		break;
		case 6:
			result="Julio";
		break;
		case 7:
			result="Agosto";
		break;
		case 8:
			result="Septiembre";
		break;
		case 9:
			result="Octubre";
		break;
		case 10:
			result="Noviembre";
		break;
		case 11:
			result="Diciembre";
		break;
	}//END SWITCH
	return result;
}

function GetVideoDuration(raw){
	var duracion_texo = "",
	umbral_arria = 55, // redondear arriba de 55 segundos Ã³ minutos
	ubral_abajo = 5, // redondear abajo de 05 segundos Ã³ minutos
	matches = raw.match(/(\d{2}):(\d{2}):(\d{2})/),
	horas = parseInt(matches[1]),
	minutos = parseInt(matches[2]),
	segundos = parseInt(matches[3]);
	
	// redondear segundos
	if (segundos > umbral_arria){
		segundos = 0; minutos++; 
	}else if (segundos < ubral_abajo && minutos > 0){
		segundos = 0;
	}
	
	// redondear minutos
	if (minutos > umbral_arria){
		minutos = 0; horas++; 
	}else if (minutos < ubral_abajo && horas > 0){
		minutos = 0;
	}
	
	// formar cadena
	if (horas > 0) duracion_texo += horas + "h ";
	if (minutos > 0) duracion_texo += minutos + "m ";
	if (segundos > 0) duracion_texo += segundos + "s";
	
	return duracion_texo.replace(/^\s+|\s+$/g, '');
}