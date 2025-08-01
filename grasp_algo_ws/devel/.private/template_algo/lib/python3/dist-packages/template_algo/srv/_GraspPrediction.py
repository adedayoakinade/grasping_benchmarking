# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from template_algo/GraspPredictionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GraspPredictionRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "template_algo/GraspPredictionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GraspPredictionRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from template_algo/GraspPredictionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import template_algo.msg

class GraspPredictionResponse(genpy.Message):
  _md5sum = "86d7d0d5a00535c6699247df54f62820"
  _type = "template_algo/GraspPredictionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success
template_algo/Grasp best_grasp


================================================================================
MSG: template_algo/Grasp
geometry_msgs/Pose pose
float32 width
float32 quality
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['success','best_grasp']
  _slot_types = ['bool','template_algo/Grasp']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,best_grasp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GraspPredictionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.best_grasp is None:
        self.best_grasp = template_algo.msg.Grasp()
    else:
      self.success = False
      self.best_grasp = template_algo.msg.Grasp()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B7d2f().pack(_x.success, _x.best_grasp.pose.position.x, _x.best_grasp.pose.position.y, _x.best_grasp.pose.position.z, _x.best_grasp.pose.orientation.x, _x.best_grasp.pose.orientation.y, _x.best_grasp.pose.orientation.z, _x.best_grasp.pose.orientation.w, _x.best_grasp.width, _x.best_grasp.quality))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.best_grasp is None:
        self.best_grasp = template_algo.msg.Grasp()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.success, _x.best_grasp.pose.position.x, _x.best_grasp.pose.position.y, _x.best_grasp.pose.position.z, _x.best_grasp.pose.orientation.x, _x.best_grasp.pose.orientation.y, _x.best_grasp.pose.orientation.z, _x.best_grasp.pose.orientation.w, _x.best_grasp.width, _x.best_grasp.quality,) = _get_struct_B7d2f().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B7d2f().pack(_x.success, _x.best_grasp.pose.position.x, _x.best_grasp.pose.position.y, _x.best_grasp.pose.position.z, _x.best_grasp.pose.orientation.x, _x.best_grasp.pose.orientation.y, _x.best_grasp.pose.orientation.z, _x.best_grasp.pose.orientation.w, _x.best_grasp.width, _x.best_grasp.quality))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.best_grasp is None:
        self.best_grasp = template_algo.msg.Grasp()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.success, _x.best_grasp.pose.position.x, _x.best_grasp.pose.position.y, _x.best_grasp.pose.position.z, _x.best_grasp.pose.orientation.x, _x.best_grasp.pose.orientation.y, _x.best_grasp.pose.orientation.z, _x.best_grasp.pose.orientation.w, _x.best_grasp.width, _x.best_grasp.quality,) = _get_struct_B7d2f().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B7d2f = None
def _get_struct_B7d2f():
    global _struct_B7d2f
    if _struct_B7d2f is None:
        _struct_B7d2f = struct.Struct("<B7d2f")
    return _struct_B7d2f
class GraspPrediction(object):
  _type          = 'template_algo/GraspPrediction'
  _md5sum = '86d7d0d5a00535c6699247df54f62820'
  _request_class  = GraspPredictionRequest
  _response_class = GraspPredictionResponse
