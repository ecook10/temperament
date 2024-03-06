import { View, useWindowDimensions } from "react-native";
import Control, { ControlMode } from "../components/Control";
import Piano from "../components/Piano";
import { useState } from "react";

const CONTROL_HEIGHT_PX = 100;

const RootScreen = () => {
  const window = useWindowDimensions();
  const pianoHeightPx = window.height - CONTROL_HEIGHT_PX;

  const [mode, setMode] = useState<ControlMode>();

  return (
    <View style={{ height: "100%", width: "100%", flexDirection: "column" }} >
      <View style={{ height: CONTROL_HEIGHT_PX, width: "100%", backgroundColor: "lightblue", flexDirection: "row" }}>
        <Control mode={mode} setMode={setMode} />
      </View>
      <View style={{ height: pianoHeightPx, width: "100%", position: "relative" }}>
        <Piano
          heightPx={pianoHeightPx}
          whiteKeyCount={8}
          startingKeyName="F"
          startingOctave={3}
        />
      </View>
    </View>
  );
};

export default RootScreen;
