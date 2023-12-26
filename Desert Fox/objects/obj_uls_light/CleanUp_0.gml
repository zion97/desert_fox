/// @description Clean Up

	//Clean Vertex
	vertex_format_delete(VertexFormat);
	vertex_delete_buffer(VBuffer);
	
	//Surface
	if (surface_exists(light_surf))
	{
		surface_free(light_surf);
	}
	
	