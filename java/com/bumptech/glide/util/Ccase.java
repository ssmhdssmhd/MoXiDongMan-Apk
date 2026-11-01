package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.Model;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* renamed from: com.bumptech.glide.util.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase {

    /* renamed from: do, reason: not valid java name */
    private static final int f10466do = 31;

    /* renamed from: if, reason: not valid java name */
    private static final int f10468if = 17;

    /* renamed from: for, reason: not valid java name */
    private static final char[] f10467for = "0123456789abcdef".toCharArray();

    /* renamed from: new, reason: not valid java name */
    private static final char[] f10469new = new char[64];

    /* renamed from: com.bumptech.glide.util.case$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f10470do;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f10470do = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10470do[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10470do[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10470do[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10470do[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private Ccase() {
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static int m12038break(@NonNull Bitmap bitmap) {
        return m12047goto(bitmap);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static <T> Queue<T> m12039case(int i) {
        return new ArrayDeque(i);
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public static <T> List<T> m12040catch(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m12041class(float f) {
        return m12042const(f, 17);
    }

    /* renamed from: const, reason: not valid java name */
    public static int m12042const(float f, int i) {
        return m12055super(Float.floatToIntBits(f), i);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m12043do() {
        if (!m12050native()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m12044else(int i, int i2, @Nullable Bitmap.Config config) {
        return i * i2 * m12057this(config);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m12045final(int i) {
        return m12055super(i, 17);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m12046for(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj instanceof Model ? ((Model) obj).isEquivalentTo(obj2) : obj.equals(obj2);
    }

    @TargetApi(19)
    /* renamed from: goto, reason: not valid java name */
    public static int m12047goto(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    return bitmap.getAllocationByteCount();
                } catch (NullPointerException unused) {
                }
            }
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12048if() {
        if (!m12052public()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m12049import(boolean z, int i) {
        return m12055super(z ? 1 : 0, i);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m12050native() {
        return !m12052public();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m12051new(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m12052public() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m12053return(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m12054static(int i, int i2) {
        return m12053return(i) && m12053return(i2);
    }

    /* renamed from: super, reason: not valid java name */
    public static int m12055super(int i, int i2) {
        return (i2 * 31) + i;
    }

    @NonNull
    /* renamed from: switch, reason: not valid java name */
    public static String m12056switch(@NonNull byte[] bArr) {
        String strM12059try;
        char[] cArr = f10469new;
        synchronized (cArr) {
            strM12059try = m12059try(bArr, cArr);
        }
        return strM12059try;
    }

    /* renamed from: this, reason: not valid java name */
    private static int m12057this(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = Cdo.f10470do[config.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2 || i == 3) {
            return 2;
        }
        return i != 4 ? 4 : 8;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m12058throw(@Nullable Object obj, int i) {
        return m12055super(obj == null ? 0 : obj.hashCode(), i);
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    private static String m12059try(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f10467for;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static int m12060while(boolean z) {
        return m12049import(z, 17);
    }
}
