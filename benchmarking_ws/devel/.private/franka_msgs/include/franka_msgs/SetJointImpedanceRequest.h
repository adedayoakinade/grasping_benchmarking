// Generated by gencpp from file franka_msgs/SetJointImpedanceRequest.msg
// DO NOT EDIT!


#ifndef FRANKA_MSGS_MESSAGE_SETJOINTIMPEDANCEREQUEST_H
#define FRANKA_MSGS_MESSAGE_SETJOINTIMPEDANCEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace franka_msgs
{
template <class ContainerAllocator>
struct SetJointImpedanceRequest_
{
  typedef SetJointImpedanceRequest_<ContainerAllocator> Type;

  SetJointImpedanceRequest_()
    : joint_stiffness()  {
      joint_stiffness.assign(0.0);
  }
  SetJointImpedanceRequest_(const ContainerAllocator& _alloc)
    : joint_stiffness()  {
  (void)_alloc;
      joint_stiffness.assign(0.0);
  }



   typedef boost::array<double, 7>  _joint_stiffness_type;
  _joint_stiffness_type joint_stiffness;





  typedef boost::shared_ptr< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointImpedanceRequest_

typedef ::franka_msgs::SetJointImpedanceRequest_<std::allocator<void> > SetJointImpedanceRequest;

typedef boost::shared_ptr< ::franka_msgs::SetJointImpedanceRequest > SetJointImpedanceRequestPtr;
typedef boost::shared_ptr< ::franka_msgs::SetJointImpedanceRequest const> SetJointImpedanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator1> & lhs, const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.joint_stiffness == rhs.joint_stiffness;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator1> & lhs, const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace franka_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "45e5482efb638f20554d876158c68e96";
  }

  static const char* value(const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x45e5482efb638f20ULL;
  static const uint64_t static_value2 = 0x554d876158c68e96ULL;
};

template<class ContainerAllocator>
struct DataType< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "franka_msgs/SetJointImpedanceRequest";
  }

  static const char* value(const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[7] joint_stiffness\n"
;
  }

  static const char* value(const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_stiffness);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointImpedanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::franka_msgs::SetJointImpedanceRequest_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "joint_stiffness: ";
    if (v.joint_stiffness.empty() || true)
      s << "[";
    for (size_t i = 0; i < v.joint_stiffness.size(); ++i)
    {
      if (true && i > 0)
        s << ", ";
      else if (!true)
        s << std::endl << indent << "  -";
      Printer<double>::stream(s, true ? std::string() : indent + "    ", v.joint_stiffness[i]);
    }
    if (v.joint_stiffness.empty() || true)
      s << "]";
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRANKA_MSGS_MESSAGE_SETJOINTIMPEDANCEREQUEST_H
