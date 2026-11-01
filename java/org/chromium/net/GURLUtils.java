package org.chromium.net;

import android.support.v4.lo0;
import androidx.annotation.VisibleForTesting;

@lo0("net")
/* loaded from: classes3.dex */
public final class GURLUtils {

    @VisibleForTesting
    public interface Natives {
        String getOrigin(String str);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m37301do(String str) {
        return Cgoto.m37514if().getOrigin(str);
    }
}
