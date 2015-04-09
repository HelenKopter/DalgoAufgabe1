function [ yesno ] = is_normal_weight( student )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
ratio = bmi_for_students(student);
yesno = ratio <= 25 && ratio >= 18.5;

end

