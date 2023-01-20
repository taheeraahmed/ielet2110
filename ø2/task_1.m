% 1a
disp('Task 1a');
vec_a = zeros(1,0);

for i=1:20 
    m = mod(i,2);
    if m == 0
       vec_a(length(vec_a)+1) = i;
    end
end
disp(vec_a);

% 1b
disp('Task 1b');
vec_b = zeros(1,0);

for i=1:10 
   vec_b(length(vec_b)+1) = i*i*i;
end
disp(vec_b);

%1c 
disp('Task 1c');
vec_c = zeros(1,0);

for i=1:10 
   vec_c(length(vec_c)+1) = i*i;
end
disp(vec_c);

%1d 
disp('Task 1d');
vec_d = vec_c;

for i=length(vec_d):-1:1
    m = mod(i,2);
    if m == 0
        vec_d(i) = [];
    end
end

disp(vec_d)



