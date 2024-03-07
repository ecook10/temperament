import { View, useWindowDimensions } from "react-native";
import Control from "../components/Control";
import Piano from "../components/Piano";

const CONTROL_HEIGHT_PX = 100;

const RootScreen = () => {
  const window = useWindowDimensions();
  const pianoHeightPx = window.height - CONTROL_HEIGHT_PX;

  return (
    <View style={{ height: "100%", width: "100%", flexDirection: "column" }}>
      <View
        style={{
          height: CONTROL_HEIGHT_PX,
          width: "100%",
          backgroundColor: "lightblue",
          flexDirection: "row",
        }}
      >
        <Control />
      </View>
      <View
        style={{ height: pianoHeightPx, width: "100%", position: "relative" }}
      >
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
