$(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
			$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		};
	}	

	var accordion = new Accordion($('#accordion'), false);
});


$(".LLSound").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/lovelive.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".GBHNG").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/GBHNG.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".NXN").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/NXN.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".YTHW").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/YTHW.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".XLHL").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/XLHL.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".DTX").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/DTX.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".XMYZJ").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/XMYZJ.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".XKL").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/XKL.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".XQHY").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/XQHY.wav" autostart="true" hidden="true" loop="false">'); 
})

$(".SZNK").on("click", function(){
	//Sounds on click
	$('embed').remove();  
        $('body').append('<embed src="Sounds/SZNK.wav" autostart="true" hidden="true" loop="false">'); 
})


