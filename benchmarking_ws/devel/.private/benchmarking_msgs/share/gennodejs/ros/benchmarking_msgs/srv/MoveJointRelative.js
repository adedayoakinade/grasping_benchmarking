// Auto-generated. Do not edit!

// (in-package benchmarking_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveJointRelativeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.ang_disp = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = 0;
      }
      if (initObj.hasOwnProperty('ang_disp')) {
        this.ang_disp = initObj.ang_disp
      }
      else {
        this.ang_disp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointRelativeRequest
    // Serialize message field [joint]
    bufferOffset = _serializer.int32(obj.joint, buffer, bufferOffset);
    // Serialize message field [ang_disp]
    bufferOffset = _serializer.float32(obj.ang_disp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointRelativeRequest
    let len;
    let data = new MoveJointRelativeRequest(null);
    // Deserialize message field [joint]
    data.joint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ang_disp]
    data.ang_disp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'benchmarking_msgs/MoveJointRelativeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f083439c832483d5c0f562ca621c0085';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 joint
    float32 ang_disp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointRelativeRequest(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = 0
    }

    if (msg.ang_disp !== undefined) {
      resolved.ang_disp = msg.ang_disp;
    }
    else {
      resolved.ang_disp = 0.0
    }

    return resolved;
    }
};

class MoveJointRelativeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointRelativeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointRelativeResponse
    let len;
    let data = new MoveJointRelativeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'benchmarking_msgs/MoveJointRelativeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointRelativeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveJointRelativeRequest,
  Response: MoveJointRelativeResponse,
  md5sum() { return '6a2ebcc60925d499d2755f9d7fc50d83'; },
  datatype() { return 'benchmarking_msgs/MoveJointRelative'; }
};
