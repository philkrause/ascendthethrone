
function scr_top_instance_position(_xx,_yy,_object){
	
	
	
	var instance_list = ds_list_create()
	
	var instance = instance_position(_xx,_yy,_object);
	
	var top_instance = instance;
	
	
	while instance_exists(instance)
	{
	
		ds_list_add(instance_list,instance)
		instance_deactivate_object(instance)
		if instance.depth < top_instance.depth {
			top_instance = instance
			
		}
		
		instance = instance_position(_xx,_yy,_object)
	}
	
	while ds_list_size(instance_list) {
		instance_activate_object(instance_list[|0]);
		ds_list_delete(instance_list,0)
	}
	
	ds_list_destroy(instance_list)
	
	
	return top_instance
	
}