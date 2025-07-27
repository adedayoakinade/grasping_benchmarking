
"use strict";

let detect_grasps = require('./detect_grasps.js')
let Grasp2DPrediction = require('./Grasp2DPrediction.js')
let GraspPrediction = require('./GraspPrediction.js')

module.exports = {
  detect_grasps: detect_grasps,
  Grasp2DPrediction: Grasp2DPrediction,
  GraspPrediction: GraspPrediction,
};
