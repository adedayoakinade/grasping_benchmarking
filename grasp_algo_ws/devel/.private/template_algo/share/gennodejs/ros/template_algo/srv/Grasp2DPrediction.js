// Auto-generated. Do not edit!

// (in-package template_algo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let Grasp2D = require('../msg/Grasp2D.js');

//-----------------------------------------------------------

class Grasp2DPredictionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depth_image = null;
      this.rgb_image = null;
    }
    else {
      if (initObj.hasOwnProperty('depth_image')) {
        this.depth_image = initObj.depth_image
      }
      else {
        this.depth_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('rgb_image')) {
        this.rgb_image = initObj.rgb_image
      }
      else {
        this.rgb_image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Grasp2DPredictionRequest
    // Serialize message field [depth_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth_image, buffer, bufferOffset);
    // Serialize message field [rgb_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.rgb_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Grasp2DPredictionRequest
    let len;
    let data = new Grasp2DPredictionRequest(null);
    // Deserialize message field [depth_image]
    data.depth_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgb_image]
    data.rgb_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.depth_image);
    length += sensor_msgs.msg.Image.getMessageSize(object.rgb_image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'template_algo/Grasp2DPredictionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1c49a106a69eea7fc2688cb15ba57b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image depth_image
    sensor_msgs/Image rgb_image
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Grasp2DPredictionRequest(null);
    if (msg.depth_image !== undefined) {
      resolved.depth_image = sensor_msgs.msg.Image.Resolve(msg.depth_image)
    }
    else {
      resolved.depth_image = new sensor_msgs.msg.Image()
    }

    if (msg.rgb_image !== undefined) {
      resolved.rgb_image = sensor_msgs.msg.Image.Resolve(msg.rgb_image)
    }
    else {
      resolved.rgb_image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class Grasp2DPredictionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.best_grasp = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('best_grasp')) {
        this.best_grasp = initObj.best_grasp
      }
      else {
        this.best_grasp = new Grasp2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Grasp2DPredictionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [best_grasp]
    bufferOffset = Grasp2D.serialize(obj.best_grasp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Grasp2DPredictionResponse
    let len;
    let data = new Grasp2DPredictionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [best_grasp]
    data.best_grasp = Grasp2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'template_algo/Grasp2DPredictionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54979a58058ba544cf07ee2628f9dd58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    template_algo/Grasp2D best_grasp
    
    
    ================================================================================
    MSG: template_algo/Grasp2D
    int32 px
    int32 py
    float32 angle
    float32 width
    float32 quality
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Grasp2DPredictionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.best_grasp !== undefined) {
      resolved.best_grasp = Grasp2D.Resolve(msg.best_grasp)
    }
    else {
      resolved.best_grasp = new Grasp2D()
    }

    return resolved;
    }
};

module.exports = {
  Request: Grasp2DPredictionRequest,
  Response: Grasp2DPredictionResponse,
  md5sum() { return 'b62ec6f0334c09da4ef4d7cc361762ae'; },
  datatype() { return 'template_algo/Grasp2DPrediction'; }
};
