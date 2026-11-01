package android.support.v4;

import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes2.dex */
public class kh1 {
    /* renamed from: case, reason: not valid java name */
    public static boolean m4402case(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4403do(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m4404else(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m4405for(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m4406goto(double d) {
        return String.format(Locale.CHINESE, "%.2f", Double.valueOf(d));
    }

    /* renamed from: if, reason: not valid java name */
    public static float m4407if(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m4408new(int i) {
        if (i <= 0) {
            return 0;
        }
        return (int) (Math.log10(i) + 1.0d);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m4409this(float f) {
        return String.format(Locale.CHINESE, "%.2f", Float.valueOf(f));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4410try(long j) {
        if (j <= 0) {
            return 0;
        }
        return (int) (Math.log10(j) + 1.0d);
    }
}
