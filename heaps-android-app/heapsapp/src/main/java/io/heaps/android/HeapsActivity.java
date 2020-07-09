package io.heaps.android;

import org.libsdl.app.SDLActivity;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

public class HeapsActivity extends SDLActivity {
    private static HeapsActivity instance;
    public static native int startHL();

    // Used to load the native libraries on application startup.
    static {
        System.loadLibrary("openal");
        System.loadLibrary("SDL2");
        System.loadLibrary("heapsapp");
    }

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        instance = this;
    }

    @Override
    protected String[] getLibraries() {
        return new String[]{
                "openal",
                "SDL2",
                "heapsapp"
        };
    }

    protected void run() {
        super.run();
        this.startHL();
    }

    public static Context getContext() {
        return instance.getApplicationContext();
    }
}
