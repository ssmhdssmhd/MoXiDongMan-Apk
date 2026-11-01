package android.support.v4;

import com.facebook.soloader.nativeloader.NativeLoaderDelegate;

/* loaded from: classes.dex */
public class t32 implements NativeLoaderDelegate {
    @Override // com.facebook.soloader.nativeloader.NativeLoaderDelegate
    public boolean loadLibrary(String str) {
        System.loadLibrary(str);
        return true;
    }
}
