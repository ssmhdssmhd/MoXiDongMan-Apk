package android.support.v4;

import android.net.Uri;

/* loaded from: classes.dex */
public final class lz0 {

    /* renamed from: do, reason: not valid java name */
    private static final int f3807do = 512;

    /* renamed from: if, reason: not valid java name */
    private static final int f3808if = 384;

    private lz0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m4807do(Uri uri) {
        return m4809if(uri) && !m4811try(uri);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m4808for(Uri uri) {
        return m4809if(uri) && m4811try(uri);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m4809if(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && od1.f4557else.equals(uri.getAuthority());
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m4810new(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= f3808if;
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m4811try(Uri uri) {
        return uri.getPathSegments().contains(od1.f4559final);
    }
}
