clear 
close all

dt = dlmread('./data_imu_sim1_acc_t.txt');         
data_x = dlmread('./data_imu_sim1_acc_x.txt'); 
data_y= dlmread('./data_imu_sim1_acc_y.txt'); 
data_z = dlmread('./data_imu_sim1_acc_z.txt'); 
data_draw=(data_x+data_y+data_z)/3 ;

data_sim_x= dlmread('./data_imu_sim1_sim_acc_x.txt'); 
data_sim_y= dlmread('./data_imu_sim1_sim_acc_y.txt'); 
data_sim_z= dlmread('./data_imu_sim1_sim_acc_z.txt'); 
data_sim_draw=(data_sim_x+data_sim_y+data_sim_z)/3 ;

figure
loglog(dt, data_draw , 'r+');
% loglog(dt, data_sim_draw , '-');
xlabel('time:sec');                
ylabel('acc_Sigma:m/s^2');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(dt, data_sim_draw , 'r-');



dt = dlmread('./data_imu_sim2_acc_t.txt');         
data_x = dlmread('./data_imu_sim2_acc_x.txt'); 
data_y= dlmread('./data_imu_sim2_acc_y.txt'); 
data_z = dlmread('./data_imu_sim2_acc_z.txt'); 
data_draw=(data_x+data_y+data_z)/3 ;

data_sim_x= dlmread('./data_imu_sim2_sim_acc_x.txt'); 
data_sim_y= dlmread('./data_imu_sim2_sim_acc_y.txt'); 
data_sim_z= dlmread('./data_imu_sim2_sim_acc_z.txt'); 
data_sim_draw=(data_sim_x+data_sim_y+data_sim_z)/3 ;

figure
loglog(dt, data_draw , 'b+');
% loglog(dt, data_sim_draw , '-');
xlabel('time:sec');                
ylabel('acc_Sigma:m/s^2');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(dt, data_sim_draw , 'b-');
