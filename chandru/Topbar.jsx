import React from "react";
import { useContext } from "react";
import { ColorModeContext } from "../../theme";
import { useTheme, Box, IconButton } from "@mui/material";
import LightModeOutlinedIcon from "@mui/icons-material/LightModeOutlined";
import DarkModeOutlinedIcon from "@mui/icons-material/DarkModeOutlined";
import MenuOutlinedIcon from "@mui/icons-material/MenuOutlined";
import { useSidebarContext } from "./sidebar/sidebarContext";
import { LogoutOutlined } from "@mui/icons-material";

const Topbar = () => {
  const theme = useTheme();
  // const colors = tokens(theme.palette.mode);
  const colorMode = useContext(ColorModeContext);

  const { setToggle, broke } = useSidebarContext();

  function logOut() {
    localStorage.clear();
    window.location.reload(false);
  }
  return (
    <div>
      <Box display="flex" justifyContent="space-between" p={2}>
        <Box display="flex">
          {broke && (
            <IconButton
              sx={{ margin: "0 6 0 2" }}
              onClick={() => setToggle(true)}
            >
              <MenuOutlinedIcon />
            </IconButton>
          )}
        </Box>
        <Box display="flex">
          <IconButton onClick={colorMode.toggleColorMode}>
            {theme.palette.mode === "dark" ? (
              <LightModeOutlinedIcon />
            ) : (
              <DarkModeOutlinedIcon />
            )}
          </IconButton>
          <IconButton onClick={logOut} title="Logout">
            <LogoutOutlined />
          </IconButton>
        </Box>
      </Box>
    </div>
  );
};

export default Topbar;
