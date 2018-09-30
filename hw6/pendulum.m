function T = pendulum(L,a0)
T = 0;
if L > 0
    omega = 0;
    g = 9.8;
    theta = a0;
    delta_t = 1e-6;
    while theta > 0 
        alpha = -g*sin(theta)/L;
        omega = omega + alpha * delta_t;
        theta = theta + omega * delta_t;
        T = T + delta_t;
    end
    T =4*T;
end
