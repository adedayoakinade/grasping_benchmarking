// Generated by gencpp from file franka_control/SetKFrameRequest.msg
// DO NOT EDIT!


#ifndef FRANKA_CONTROL_MESSAGE_SETKFRAMEREQUEST_H
#define FRANKA_CONTROL_MESSAGE_SETKFRAMEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace franka_control
{
template <class ContainerAllocator>
struct SetKFrameRequest_
{
  typedef SetKFrameRequest_<ContainerAllocator> Type;

  SetKFrameRequest_()
    : EE_T_K()  {
      EE_T_K.assign(0.0);
  }
  SetKFrameRequest_(const ContainerAllocator& _alloc)
    : EE_T_K()  {
  (void)_alloc;
      EE_T_K.assign(0.0);
  }



   typedef boost::array<double, 16>  _EE_T_K_type;
  _EE_T_K_type EE_T_K;





  typedef boost::shared_ptr< ::franka_control::SetKFrameRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::franka_control::SetKFrameRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetKFrameRequest_

typedef ::franka_control::SetKFrameRequest_<std::allocator<void> > SetKFrameRequest;

typedef boost::shared_ptr< ::franka_control::SetKFrameRequest > SetKFrameRequestPtr;
typedef boost::shared_ptr< ::franka_control::SetKFrameRequest const> SetKFrameRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::franka_control::SetKFrameRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::franka_control::SetKFrameRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::franka_control::SetKFrameRequest_<ContainerAllocator1> & lhs, const ::franka_control::SetKFrameRequest_<ContainerAllocator2> & rhs)
{
  return lhs.EE_T_K == rhs.EE_T_K;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::franka_control::SetKFrameRequest_<ContainerAllocator1> & lhs, const ::franka_control::SetKFrameRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace franka_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::franka_control::SetKFrameRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::franka_control::SetKFrameRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::franka_control::SetKFrameRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f8e38719bdb98c0e8ddafd6da2db480f";
  }

  static const char* value(const ::franka_control::SetKFrameRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf8e38719bdb98c0eULL;
  static const uint64_t static_value2 = 0x8ddafd6da2db480fULL;
};

template<class ContainerAllocator>
struct DataType< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "franka_control/SetKFrameRequest";
  }

  static const char* value(const ::franka_control::SetKFrameRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[16] EE_T_K\n"
;
  }

  static const char* value(const ::franka_control::SetKFrameRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.EE_T_K);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetKFrameRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::franka_control::SetKFrameRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::franka_control::SetKFrameRequest_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "EE_T_K: ";
    if (v.EE_T_K.empty() || true)
      s << "[";
    for (size_t i = 0; i < v.EE_T_K.size(); ++i)
    {
      if (true && i > 0)
        s << ", ";
      else if (!true)
        s << std::endl << indent << "  -";
      Printer<double>::stream(s, true ? std::string() : indent + "    ", v.EE_T_K[i]);
    }
    if (v.EE_T_K.empty() || true)
      s << "]";
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRANKA_CONTROL_MESSAGE_SETKFRAMEREQUEST_H
