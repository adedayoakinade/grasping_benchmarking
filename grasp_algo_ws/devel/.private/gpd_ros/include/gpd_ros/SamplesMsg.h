// Generated by gencpp from file gpd_ros/SamplesMsg.msg
// DO NOT EDIT!


#ifndef GPD_ROS_MESSAGE_SAMPLESMSG_H
#define GPD_ROS_MESSAGE_SAMPLESMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace gpd_ros
{
template <class ContainerAllocator>
struct SamplesMsg_
{
  typedef SamplesMsg_<ContainerAllocator> Type;

  SamplesMsg_()
    : header()
    , samples()  {
    }
  SamplesMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , samples(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Point_<ContainerAllocator> >> _samples_type;
  _samples_type samples;





  typedef boost::shared_ptr< ::gpd_ros::SamplesMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gpd_ros::SamplesMsg_<ContainerAllocator> const> ConstPtr;

}; // struct SamplesMsg_

typedef ::gpd_ros::SamplesMsg_<std::allocator<void> > SamplesMsg;

typedef boost::shared_ptr< ::gpd_ros::SamplesMsg > SamplesMsgPtr;
typedef boost::shared_ptr< ::gpd_ros::SamplesMsg const> SamplesMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gpd_ros::SamplesMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gpd_ros::SamplesMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gpd_ros::SamplesMsg_<ContainerAllocator1> & lhs, const ::gpd_ros::SamplesMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.samples == rhs.samples;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gpd_ros::SamplesMsg_<ContainerAllocator1> & lhs, const ::gpd_ros::SamplesMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gpd_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gpd_ros::SamplesMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gpd_ros::SamplesMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpd_ros::SamplesMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26492e97ed8c13252c4a85592d3e93fd";
  }

  static const char* value(const ::gpd_ros::SamplesMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26492e97ed8c1325ULL;
  static const uint64_t static_value2 = 0x2c4a85592d3e93fdULL;
};

template<class ContainerAllocator>
struct DataType< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gpd_ros/SamplesMsg";
  }

  static const char* value(const ::gpd_ros::SamplesMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes a set of point samples at which to detect grasps.\n"
"\n"
"# Header\n"
"Header header\n"
"\n"
"# The samples, as (x,y,z) points, at which to search for grasp candidates. \n"
"geometry_msgs/Point[] samples\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::gpd_ros::SamplesMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.samples);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SamplesMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gpd_ros::SamplesMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gpd_ros::SamplesMsg_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "header: ";
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "samples: ";
    if (v.samples.empty() || false)
      s << "[";
    for (size_t i = 0; i < v.samples.size(); ++i)
    {
      if (false && i > 0)
        s << ", ";
      else if (!false)
        s << std::endl << indent << "  -";
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, false ? std::string() : indent + "    ", v.samples[i]);
    }
    if (v.samples.empty() || false)
      s << "]";
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPD_ROS_MESSAGE_SAMPLESMSG_H
