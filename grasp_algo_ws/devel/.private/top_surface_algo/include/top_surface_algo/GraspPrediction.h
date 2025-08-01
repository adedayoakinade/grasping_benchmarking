// Generated by gencpp from file top_surface_algo/GraspPrediction.msg
// DO NOT EDIT!


#ifndef TOP_SURFACE_ALGO_MESSAGE_GRASPPREDICTION_H
#define TOP_SURFACE_ALGO_MESSAGE_GRASPPREDICTION_H

#include <ros/service_traits.h>


#include <top_surface_algo/GraspPredictionRequest.h>
#include <top_surface_algo/GraspPredictionResponse.h>


namespace top_surface_algo
{

struct GraspPrediction
{

typedef GraspPredictionRequest Request;
typedef GraspPredictionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GraspPrediction
} // namespace top_surface_algo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::top_surface_algo::GraspPrediction > {
  static const char* value()
  {
    return "86d7d0d5a00535c6699247df54f62820";
  }

  static const char* value(const ::top_surface_algo::GraspPrediction&) { return value(); }
};

template<>
struct DataType< ::top_surface_algo::GraspPrediction > {
  static const char* value()
  {
    return "top_surface_algo/GraspPrediction";
  }

  static const char* value(const ::top_surface_algo::GraspPrediction&) { return value(); }
};


// service_traits::MD5Sum< ::top_surface_algo::GraspPredictionRequest> should match
// service_traits::MD5Sum< ::top_surface_algo::GraspPrediction >
template<>
struct MD5Sum< ::top_surface_algo::GraspPredictionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::top_surface_algo::GraspPrediction >::value();
  }
  static const char* value(const ::top_surface_algo::GraspPredictionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::top_surface_algo::GraspPredictionRequest> should match
// service_traits::DataType< ::top_surface_algo::GraspPrediction >
template<>
struct DataType< ::top_surface_algo::GraspPredictionRequest>
{
  static const char* value()
  {
    return DataType< ::top_surface_algo::GraspPrediction >::value();
  }
  static const char* value(const ::top_surface_algo::GraspPredictionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::top_surface_algo::GraspPredictionResponse> should match
// service_traits::MD5Sum< ::top_surface_algo::GraspPrediction >
template<>
struct MD5Sum< ::top_surface_algo::GraspPredictionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::top_surface_algo::GraspPrediction >::value();
  }
  static const char* value(const ::top_surface_algo::GraspPredictionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::top_surface_algo::GraspPredictionResponse> should match
// service_traits::DataType< ::top_surface_algo::GraspPrediction >
template<>
struct DataType< ::top_surface_algo::GraspPredictionResponse>
{
  static const char* value()
  {
    return DataType< ::top_surface_algo::GraspPrediction >::value();
  }
  static const char* value(const ::top_surface_algo::GraspPredictionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TOP_SURFACE_ALGO_MESSAGE_GRASPPREDICTION_H
