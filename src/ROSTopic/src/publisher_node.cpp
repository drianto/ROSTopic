#include "ros/ros.h"
#include "ROSTopic/topic.h"

int main(int argc, char **argv){
  ros::init(argc,argv, "Publisher");
  ros::NodeHandle nh;

  ros::Publisher topic_pub = nh.advertise<ROSTopic::topic>("topic", 1000);
  ros::Rate loop_rate(1);

  while(ros::ok()){
    ROSTopic::topic topic;
    topic.usia = 18;
    topic.tinggi = 1.64;
    topic.nama = "Kaoru Mitoma";
    topic.kehadiran = true;

    topic_pub.publish(topic);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}