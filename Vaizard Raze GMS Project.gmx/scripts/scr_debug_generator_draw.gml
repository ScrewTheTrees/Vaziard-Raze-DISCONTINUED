///scr_debug_generator_draw()

for (ii=0;ii<global.debug_nodes;ii+=1)
    {
    if global.debug_node_type[ii]=0
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_red,c_red,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_purple,c_purple);
        
        }
    else if global.debug_node_type[ii]=1
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_orange,c_orange,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_orange,c_orange);
        
        }
    else if global.debug_node_type[ii]=2
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_green,c_green,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_green,c_green);
        
        }
    
    }

