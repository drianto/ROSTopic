#include "ros/ros.h"
#include "ROSTopic/topic.h"

void writeMsgToLog(const ROSTopic::topic &topic){
  ROS_INFO("Magnitude : %lf", topic.magnitude);
}

int main(int argc, char **argv){
  ros::init(argc,argv, "Client");
  ros::NodeHandle nh;

  ros::Subscriber topic_sub = nh.subscribe("magnitude", 1000, writeMsgToLog);

  ros::spin();

  return 0;
}