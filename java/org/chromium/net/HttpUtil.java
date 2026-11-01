package org.chromium.net;

import android.support.v4.lo0;

@lo0("net")
/* loaded from: classes3.dex */
public final class HttpUtil {

    public interface Natives {
        boolean isAllowedHeader(String str, String str2);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m37308do(String str, String str2) {
        return Cbreak.m37437if().isAllowedHeader(str, str2);
    }
}
