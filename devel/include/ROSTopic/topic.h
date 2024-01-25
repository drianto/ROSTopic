// Generated by gencpp from file ROSTopic/topic.msg
// DO NOT EDIT!


#ifndef ROSTOPIC_MESSAGE_TOPIC_H
#define ROSTOPIC_MESSAGE_TOPIC_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ROSTopic
{
template <class ContainerAllocator>
struct topic_
{
  typedef topic_<ContainerAllocator> Type;

  topic_()
    : usia(0)
    , tinggi(0.0)
    , nama()
    , kehadiran(false)
    , komponenX(0.0)
    , komponenY(0.0)
    , komponenZ(0.0)
    , magnitude(0.0)  {
    }
  topic_(const ContainerAllocator& _alloc)
    : usia(0)
    , tinggi(0.0)
    , nama(_alloc)
    , kehadiran(false)
    , komponenX(0.0)
    , komponenY(0.0)
    , komponenZ(0.0)
    , magnitude(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _usia_type;
  _usia_type usia;

   typedef double _tinggi_type;
  _tinggi_type tinggi;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _nama_type;
  _nama_type nama;

   typedef uint8_t _kehadiran_type;
  _kehadiran_type kehadiran;

   typedef double _komponenX_type;
  _komponenX_type komponenX;

   typedef double _komponenY_type;
  _komponenY_type komponenY;

   typedef double _komponenZ_type;
  _komponenZ_type komponenZ;

   typedef double _magnitude_type;
  _magnitude_type magnitude;





  typedef boost::shared_ptr< ::ROSTopic::topic_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ROSTopic::topic_<ContainerAllocator> const> ConstPtr;

}; // struct topic_

typedef ::ROSTopic::topic_<std::allocator<void> > topic;

typedef boost::shared_ptr< ::ROSTopic::topic > topicPtr;
typedef boost::shared_ptr< ::ROSTopic::topic const> topicConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ROSTopic::topic_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ROSTopic::topic_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ROSTopic::topic_<ContainerAllocator1> & lhs, const ::ROSTopic::topic_<ContainerAllocator2> & rhs)
{
  return lhs.usia == rhs.usia &&
    lhs.tinggi == rhs.tinggi &&
    lhs.nama == rhs.nama &&
    lhs.kehadiran == rhs.kehadiran &&
    lhs.komponenX == rhs.komponenX &&
    lhs.komponenY == rhs.komponenY &&
    lhs.komponenZ == rhs.komponenZ &&
    lhs.magnitude == rhs.magnitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ROSTopic::topic_<ContainerAllocator1> & lhs, const ::ROSTopic::topic_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ROSTopic

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ROSTopic::topic_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ROSTopic::topic_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ROSTopic::topic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ROSTopic::topic_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ROSTopic::topic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ROSTopic::topic_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ROSTopic::topic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8da47db7c1d4d80b9057432e547605d1";
  }

  static const char* value(const ::ROSTopic::topic_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8da47db7c1d4d80bULL;
  static const uint64_t static_value2 = 0x9057432e547605d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ROSTopic::topic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ROSTopic/topic";
  }

  static const char* value(const ::ROSTopic::topic_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ROSTopic::topic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 usia\n"
"float64 tinggi\n"
"string nama\n"
"bool kehadiran\n"
"float64 komponenX\n"
"float64 komponenY\n"
"float64 komponenZ\n"
"float64 magnitude\n"
;
  }

  static const char* value(const ::ROSTopic::topic_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ROSTopic::topic_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.usia);
      stream.next(m.tinggi);
      stream.next(m.nama);
      stream.next(m.kehadiran);
      stream.next(m.komponenX);
      stream.next(m.komponenY);
      stream.next(m.komponenZ);
      stream.next(m.magnitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct topic_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ROSTopic::topic_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ROSTopic::topic_<ContainerAllocator>& v)
  {
    s << indent << "usia: ";
    Printer<int64_t>::stream(s, indent + "  ", v.usia);
    s << indent << "tinggi: ";
    Printer<double>::stream(s, indent + "  ", v.tinggi);
    s << indent << "nama: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.nama);
    s << indent << "kehadiran: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.kehadiran);
    s << indent << "komponenX: ";
    Printer<double>::stream(s, indent + "  ", v.komponenX);
    s << indent << "komponenY: ";
    Printer<double>::stream(s, indent + "  ", v.komponenY);
    s << indent << "komponenZ: ";
    Printer<double>::stream(s, indent + "  ", v.komponenZ);
    s << indent << "magnitude: ";
    Printer<double>::stream(s, indent + "  ", v.magnitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSTOPIC_MESSAGE_TOPIC_H