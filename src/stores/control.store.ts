import { makeAutoObservable } from "mobx";
import { createContext } from "react";

export type ControlMode = "manual" | "guided";

class ControlStore {
  mode?: ControlMode = undefined;

  constructor() {
    makeAutoObservable(this);
  }

  setMode = (mode?: ControlMode) => {
    this.mode = mode;
  };

  // TODO
  playPartialAudio = () => {
    console.log("playPartialAudio");
  };

  // TODO
  playTempoAudio = () => {
    console.log("playTempoAudio");
  };
}

export const ControlStoreContext = createContext(new ControlStore());
