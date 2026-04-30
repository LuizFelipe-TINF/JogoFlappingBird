var _x = room_width + 48;

var _y = irandom_range(minimun_pipe_distance, room_width - minimun_pipe_distance);

var instance_pipe = instance_create_depth(_x, _y, depth, obj_Pipe)

instance_pipe = instance_create_depth(_x, _y - minimun_pipe_distance, depth, obj_Pipe)
instance_pipe.image_angle += 180;

var instance_collection = instance_create_depth(_x, _y - (minimun_pipe_distance / 2), depth, obj_Pipe_Collection);

instance_collection.image_yscale = 100;
instance_collection.follow_target = instance_pipe

alarm_set(0, get_seconds(3));