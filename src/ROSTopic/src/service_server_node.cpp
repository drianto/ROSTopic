#include "ros/ros.h"
#include "ROSTopic/topic.h"
#include <cmath>

int main(int argc, char **argv){
  ros::init(argc,argv, "Server");
  ros::NodeHandle nh;

  ros::Publisher topic_pub = nh.advertise<ROSTopic::topic>("magnitude", 1000);
  ros::Rate loop_rate(1);

  while(ros::ok()){
    ROSTopic::topic topic;
    topic.komponenX = 3;
    topic.komponenY = 4;
    topic.komponenY = 12;
    topic.magnitude = std::sqrt(std::pow(topic.komponenX, 2) + std::pow(topic.komponenY, 2) + std::pow(topic.komponenZ, 2));

    topic_pub.publish(topic);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}