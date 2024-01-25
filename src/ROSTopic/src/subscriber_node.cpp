#include "ros/ros.h"
#include "ROSTopic/topic.h"

void writeMsgToLog(const ROSTopic::topic &topic){
  ROS_INFO("Usia : %ld", topic.usia);
  ROS_INFO("Tinggi : %lf", topic.tinggi);
  ROS_INFO("Nama : %s", topic.nama.c_str());
  ROS_INFO("Kehadiran : %d", topic.kehadiran);
}

int main(int argc, char **argv){
  ros::init(argc,argv, "Subscriber");
  ros::NodeHandle nh;

  ros::Subscriber topic_sub = nh.subscribe("topic", 1000, writeMsgToLog);

  ros::spin();

  return 0;
}