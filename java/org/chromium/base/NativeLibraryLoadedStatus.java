package org.chromium.base;

import android.support.v4.ed;
import android.support.v4.kp0;

/* loaded from: classes3.dex */
public class NativeLibraryLoadedStatus {

    /* renamed from: do, reason: not valid java name */
    private static NativeLibraryLoadedStatusProvider f33036do;

    public interface NativeLibraryLoadedStatusProvider {
        boolean areMainDexNativeMethodsReady();

        boolean areNativeMethodsReady();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m36863do(boolean z) {
        NativeLibraryLoadedStatusProvider nativeLibraryLoadedStatusProvider;
        if (ed.f1398if && (nativeLibraryLoadedStatusProvider = f33036do) != null) {
            if (!(z ? nativeLibraryLoadedStatusProvider.areMainDexNativeMethodsReady() : nativeLibraryLoadedStatusProvider.areNativeMethodsReady())) {
                throw new kp0("Native method called before the native library was ready.");
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36864for(NativeLibraryLoadedStatusProvider nativeLibraryLoadedStatusProvider) {
        f33036do = nativeLibraryLoadedStatusProvider;
    }

    /* renamed from: if, reason: not valid java name */
    public static NativeLibraryLoadedStatusProvider m36865if() {
        return f33036do;
    }
}
