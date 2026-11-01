package android.support.v4;

import com.facebook.soloader.nativeloader.NativeLoaderDelegate;

/* loaded from: classes.dex */
public class t21 {

    /* renamed from: do, reason: not valid java name */
    private static NativeLoaderDelegate f6374do;

    private t21() {
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized void m7682do(NativeLoaderDelegate nativeLoaderDelegate) {
        if (f6374do != null) {
            throw new IllegalStateException("Cannot re-initialize NativeLoader.");
        }
        f6374do = nativeLoaderDelegate;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m7683for(String str) {
        NativeLoaderDelegate nativeLoaderDelegate;
        synchronized (t21.class) {
            nativeLoaderDelegate = f6374do;
            if (nativeLoaderDelegate == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return nativeLoaderDelegate.loadLibrary(str);
    }

    /* renamed from: if, reason: not valid java name */
    public static synchronized boolean m7684if() {
        return f6374do != null;
    }
}
