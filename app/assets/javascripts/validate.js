$(document).ready(function(){


		$('#articles_form').validate({
	    rules: {
	       "articles[title]": {
	       required: true
	      },
	      "articles[body]": {
	       required: true, minlength: 6
	      }

	    }
	  });

}); // end document.ready


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