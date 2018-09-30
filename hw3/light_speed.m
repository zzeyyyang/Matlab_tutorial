function [time_inmin,distances_inmile] = light_speed(distances_inkm)
time_inmin = distances_inkm./(3e5*60);
distances_inmile = distances_inkm./1.609;
end