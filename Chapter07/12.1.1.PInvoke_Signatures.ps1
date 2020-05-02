Add-Type -TypeDefinition '
    using System;
    using System.Runtime.InteropServices;
    using System.Text;

    public class WindowTools
    {
        public delegate bool EnumWindowsProc(
            IntPtr hWnd,
            Int    lParam
        );

        [DllImport("User32.dll")]
        public static extern bool EnumWindows(
            EnumWindowsProc enumFunc,
            int             lParam
        );

        [DllImport("User32.dll")]
        public static extern int GetWindowText(
            IntPtr        hWnd,
            StringBuilder lpString,
            int           nMaxCount
        );

        [DllImport("User32.dll")]
        public static extern int GetWindowTextLength(
            IntPtr hWnd
        );

        [DllImport("User32.dll")]
        public static extern bool IsWindowVisible(
            IntPtr hWnd
        );

        [DllImport("User32.dll")]
        public static extern IntPtr GetShellWindow();
    }
'
