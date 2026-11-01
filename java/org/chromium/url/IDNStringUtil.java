package org.chromium.url;

import android.support.v4.lo0;
import java.net.IDN;
import org.chromium.base.annotations.CalledByNative;

@lo0("url::android")
/* loaded from: classes3.dex */
public class IDNStringUtil {
    @CalledByNative
    private static String idnToASCII(String str) {
        try {
            return IDN.toASCII(str, 2);
        } catch (Exception unused) {
            return null;
        }
    }
}
