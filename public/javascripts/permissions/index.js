jQuery(document).ready(function()
	{	
		var isAddNewPermissionDivShown = false;
		var isEditPermissionsDivShown = false;
		var isStatusPermissionsDivShown = false;
		var current_permission_level = ""	
		
		jQuery("#add_new_permission_a").bind('click', function(event)
		{
			if (isAddNewPermissionDivShown) 
			{
				jQuery("#add_new_permission_div").hide('fast');
			}
			else
			{
				jQuery("#add_new_permission_div").show('fast');
			}
			
			isAddNewPermissionDivShown = !isAddNewPermissionDivShown;			
		});
		
		jQuery("#new_permission_name").focusout(function()
		{
			var name = jQuery("#new_permission_name").val();
			
			if (name != "") 
			{
				var worker_permissions = jQuery.ajax(
				{
	    			type: "POST",
		    		url: "http://localhost:3000/private/permissions/check_permission_name_availability",
		    		data: "name=" + name,
		    		
		    		success: function(message)
		    		{	    		
		    			if (message == 'OK') 
		    			{
		    				jQuery("#add_permission_button").removeAttr('disabled');
		    				jQuery("#new_permission_name_availability_status").css('color', 'lime');
		    				jQuery("#new_permission_name_availability_status").text('Nazwa wolna');
		    			}
		    			else
		    			{
		    				jQuery("#add_permission_button").attr('disabled', 'disabled');
		    				jQuery("#new_permission_name_availability_status").css('color', 'red');
		    				jQuery("#new_permission_name_availability_status").text('Nazwa niedostępna');
		    			
		    			};
		    		},
		    		error: function()
		    		{
		    			alert('Nie można było sprawdzić czy to pozwolenie o takiej nazwie już istnieje');
		    		}
		    	});
			}
			else
			{
				jQuery("#add_permission_button").attr('disabled', 'disabled');
			};
		});
		
		jQuery("#edit_permissions_a").bind('click', function(event)
		{
			if (isEditPermissionsDivShown)
			{
				jQuery("#edit_permissions_div").hide('fast')
			}
			else
			{
				jQuery("#edit_permissions_div").show('fast');
			}
			
			isEditPermissionsDivShown = !isEditPermissionsDivShown;
		});		
		
		jQuery("#edit_permissions_select").change(function(event)
		{
			var permission = jQuery("#edit_permissions_select").val();
			
			if (permission != "")
			{
				var currentPermissionSettings = jQuery.ajax(
				{
					type: "POST",
		    		url: "http://localhost:3000/private/permissions/get_permission_data",
		    		data: "name="+permission,
		    		
		    		success: function(jsonResponse)
		    		{		    			    			
		    			jsonResponse.write_all == true ?  	
		    				jQuery("#edit_write_all").attr('checked', 'checked') :
		    				jQuery("#edit_write_all").removeAttr('checked');		
		    			
		    			jsonResponse.write_cinema_only == true ? 
		    				jQuery("#edit_write_cinema_only").attr('checked', 'checked') :
		    				jQuery("#edit_write_cinema_only").removeAttr('checked');
		    					    		
		    			jsonResponse.read_all == true ? 
		    				jQuery("#edit_read_all").attr('checked', 'checked') :
		    				jQuery("#edit_read_all").removeAttr('checked');	
		    				
		    			jsonResponse.read_cinema_only == true ?
		    				jQuery("#edit_read_cinema_only").attr('checked', 'checked') :
		    				jQuery("#edit_read_cinema_only").removeAttr('checked');
		    					    					    			
		    			jQuery("#edit_permissions_button").removeAttr('disabled');
		    		},
		    		error: function()
		    		{
		    			alert('Nie można było odczytać uprawnień');
		    		}
				});
			}
			else
			{
				jQuery("#edit_permission_data_div").hide('fast');
				jQuery("#edit_permissions_button").attr('disabled','disabled');	
				
				jQuery("#edit_write_all").removeAttr('checked');					
				jQuery("#edit_write_cinema_only").removeAttr('checked');
				jQuery("#edit_read_all").removeAttr('checked');
				jQuery("#edit_read_cinema_only").removeAttr('checked');
			};
		});
			
		jQuery("#status_permissions_a").bind('click', function(event)
		{
			if (isStatusPermissionsDivShown)
			{
				jQuery("#statuses").hide('fast');
			}
			else
			{
				jQuery("#statuses").show('fast');				
			}
			
			isStatusPermissionsDivShown = !isStatusPermissionsDivShown;
		});
			
		jQuery("#worker_status_name").change(function(event)
		{
			var status = jQuery("#worker_status_name").val();
			
			if (status != "") 
			{
				jQuery("#privileges").show('fast');
			}
			else
			{
				jQuery("#privileges").hide('fast');
				jQuery("#permissions").hide('fast');
				jQuery("#worker_privilege_name").val('');				
			}
		});
		
		jQuery("#worker_privilege_name").change(function(event)
		{						
			var privilege = jQuery("#worker_privilege_name").val();
			
			if (privilege != '') 
			{
				jQuery("#permissions").show('fast');
				var status = jQuery("#worker_status_name").val();
				
				var worker_permissions = jQuery.ajax(
				{
	    			type: "POST",
		    		url: "http://localhost:3000/private/permissions/get_current_permission",
		    		data: "status=" + status + "&privilege=" + privilege,
		    		
		    		success: function(message)
		    		{
		    			current_permission_level = message;
		    			jQuery("#worker_permission_level").val(message);	   			    			
		    		},
		    		error: function()
		    		{
		    			alert('Nie można było odczytać uprawnień');
		    		}
		    	});
		    	
				jQuery("#permissions").show('fast');
			}
			else
			{
				jQuery("#permissions").hide('fast');			
			}
		});
		
		jQuery("#worker_permission_level").change(function(event)
		{
			var permission = jQuery("#worker_permission_level").val();
			
			if (permission != '')
			{
				jQuery("#worker_permission_button").removeAttr('disabled');
			}
			else
			{
				jQuery("#worker_permission_button").attr('disabled', 'disabled');
			};
		});
	});