$(function(){
	
	//solving the active menu problem
	switch(menu){
	
		case 'Contact Us':
		$('#contact').addClass('active');
		break;
		
		case 'All Products':
			$('#listProducts').addClass('active');
			break;
		
		default:
		$('#listProducts').addClass('active');
		$('#a_'+menu.addClass('active'));
		break;
		
	
	}
});