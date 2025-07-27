// Auto-generated. Do not edit!

// (in-package moveit_adapter.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointVelocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_velocity')) {
        this.joint_velocity = initObj.joint_velocity
      }
      else {
        this.joint_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointVelocityRequest
    // Serialize message field [joint_velocity]
    bufferOffset = _serializer.float32(obj.joint_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointVelocityRequest
    let len;
    let data = new SetJointVelocityRequest(null);
    // Deserialize message field [joint_velocity]
    data.joint_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_adapter/SetJointVelocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '839a2e6607b4a6eb66bc793768eda82e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 joint_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointVelocityRequest(null);
    if (msg.joint_velocity !== undefined) {
      resolved.joint_velocity = msg.joint_velocity;
    }
    else {
      resolved.joint_velocity = 0.0
    }

    return resolved;
    }
};

class SetJointVelocityResponse {
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
    // Serializes a message object of type SetJointVelocityResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointVelocityResponse
    let len;
    let data = new SetJointVelocityResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_adapter/SetJointVelocityResponse';
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
    const resolved = new SetJointVelocityResponse(null);
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
  Request: SetJointVelocityRequest,
  Response: SetJointVelocityResponse,
  md5sum() { return '01ec734cf68bcf4ba7f369be137b28ee'; },
  datatype() { return 'moveit_adapter/SetJointVelocity'; }
};
