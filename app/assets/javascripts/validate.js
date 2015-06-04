$(document).ready(function(){


		$('#articles_form').validate({
	    rules: {
	       "article[title]": {
	       required: true
	      },
	      "article[body]": {

	      	required: true,
	        minlength: 10
	      },

	      "article[thumb]": {
		  	required: true,
		  	accept: ".jpg|.jpeg|.png",
		  }
	    }
	  });

}); // end document.ready

$(document).ready(function(){


		$('#contactForm').validate({
	    rules: {
	       name: {
	       required: true
	      },
	      email: {
	      	required: true,
	         email: true
	      },

	      subject: {
		  	required: true,
		  },
		  message: {
		  	required: true
		  }
	    }
	  });

}); 


$(document).ready(function(){


		$('#users_form').validate({
	    rules: {
	      "adminusers[first_name]": {
	        required: true
	      },

	      "adminusers[last_name]": {
	        required: true
	      },
		  
		 "adminusers[username]": {
	        minlength: 6,
	        required: true
	      },
		  
		  "adminusers[email]": {
	        required: true,
	        email: true
	      },

		  "adminusers[password]": {
				required: true,
				minlength: 6
		  },

		  "adminusers[password_confirmation]": {
				required: true,
				minlength: 6,
				equalTo: "#adminusers_password"
		  }
		  
	    },
	  });

}); // end document.ready