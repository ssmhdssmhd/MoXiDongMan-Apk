package android.support.v4;

import com.facebook.soloader.Cnative;
import com.facebook.soloader.nativeloader.NativeLoaderDelegate;

/* loaded from: classes.dex */
public class u21 implements NativeLoaderDelegate {
    @Override // com.facebook.soloader.nativeloader.NativeLoaderDelegate
    public boolean loadLibrary(String str) {
        return Cnative.m12180const(str);
    }
}
