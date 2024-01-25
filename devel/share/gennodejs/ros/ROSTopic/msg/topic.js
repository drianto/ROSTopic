// Auto-generated. Do not edit!

// (in-package ROSTopic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class topic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.usia = null;
      this.tinggi = null;
      this.nama = null;
      this.kehadiran = null;
      this.komponenX = null;
      this.komponenY = null;
      this.komponenZ = null;
      this.magnitude = null;
    }
    else {
      if (initObj.hasOwnProperty('usia')) {
        this.usia = initObj.usia
      }
      else {
        this.usia = 0;
      }
      if (initObj.hasOwnProperty('tinggi')) {
        this.tinggi = initObj.tinggi
      }
      else {
        this.tinggi = 0.0;
      }
      if (initObj.hasOwnProperty('nama')) {
        this.nama = initObj.nama
      }
      else {
        this.nama = '';
      }
      if (initObj.hasOwnProperty('kehadiran')) {
        this.kehadiran = initObj.kehadiran
      }
      else {
        this.kehadiran = false;
      }
      if (initObj.hasOwnProperty('komponenX')) {
        this.komponenX = initObj.komponenX
      }
      else {
        this.komponenX = 0.0;
      }
      if (initObj.hasOwnProperty('komponenY')) {
        this.komponenY = initObj.komponenY
      }
      else {
        this.komponenY = 0.0;
      }
      if (initObj.hasOwnProperty('komponenZ')) {
        this.komponenZ = initObj.komponenZ
      }
      else {
        this.komponenZ = 0.0;
      }
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type topic
    // Serialize message field [usia]
    bufferOffset = _serializer.int64(obj.usia, buffer, bufferOffset);
    // Serialize message field [tinggi]
    bufferOffset = _serializer.float64(obj.tinggi, buffer, bufferOffset);
    // Serialize message field [nama]
    bufferOffset = _serializer.string(obj.nama, buffer, bufferOffset);
    // Serialize message field [kehadiran]
    bufferOffset = _serializer.bool(obj.kehadiran, buffer, bufferOffset);
    // Serialize message field [komponenX]
    bufferOffset = _serializer.float64(obj.komponenX, buffer, bufferOffset);
    // Serialize message field [komponenY]
    bufferOffset = _serializer.float64(obj.komponenY, buffer, bufferOffset);
    // Serialize message field [komponenZ]
    bufferOffset = _serializer.float64(obj.komponenZ, buffer, bufferOffset);
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float64(obj.magnitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type topic
    let len;
    let data = new topic(null);
    // Deserialize message field [usia]
    data.usia = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tinggi]
    data.tinggi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nama]
    data.nama = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kehadiran]
    data.kehadiran = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [komponenX]
    data.komponenX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [komponenY]
    data.komponenY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [komponenZ]
    data.komponenZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nama);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ROSTopic/topic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8da47db7c1d4d80b9057432e547605d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 usia
    float64 tinggi
    string nama
    bool kehadiran
    float64 komponenX
    float64 komponenY
    float64 komponenZ
    float64 magnitude
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new topic(null);
    if (msg.usia !== undefined) {
      resolved.usia = msg.usia;
    }
    else {
      resolved.usia = 0
    }

    if (msg.tinggi !== undefined) {
      resolved.tinggi = msg.tinggi;
    }
    else {
      resolved.tinggi = 0.0
    }

    if (msg.nama !== undefined) {
      resolved.nama = msg.nama;
    }
    else {
      resolved.nama = ''
    }

    if (msg.kehadiran !== undefined) {
      resolved.kehadiran = msg.kehadiran;
    }
    else {
      resolved.kehadiran = false
    }

    if (msg.komponenX !== undefined) {
      resolved.komponenX = msg.komponenX;
    }
    else {
      resolved.komponenX = 0.0
    }

    if (msg.komponenY !== undefined) {
      resolved.komponenY = msg.komponenY;
    }
    else {
      resolved.komponenY = 0.0
    }

    if (msg.komponenZ !== undefined) {
      resolved.komponenZ = msg.komponenZ;
    }
    else {
      resolved.komponenZ = 0.0
    }

    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = 0.0
    }

    return resolved;
    }
};

module.exports = topic;
