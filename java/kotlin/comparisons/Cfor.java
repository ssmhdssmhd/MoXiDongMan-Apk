package kotlin.comparisons;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0013\n\u0002\b\u0017\u001a/\u0010\u0003\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0019\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0019\u0010\b\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0019\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0087\b\u001a\u0019\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\b\u001a\u0019\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\b\u001a\u0019\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000fH\u0087\b\u001a7\u0010\u0011\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001a!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0087\b\u001a!\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0087\b\u001a!\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0087\b\u001a!\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0087\b\u001a!\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0087\b\u001a!\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0087\b\u001a;\u0010\u001b\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0019\"\u00028\u0000H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\n\u0010\u001a\u001a\u00020\u001d\"\u00020\u0005H\u0007\u001a\u001c\u0010 \u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\n\u0010\u001a\u001a\u00020\u001f\"\u00020\u0007H\u0007\u001a\u001c\u0010\"\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u001a\u001a\u00020!\"\u00020\tH\u0007\u001a\u001c\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\n\u0010\u001a\u001a\u00020#\"\u00020\u000bH\u0007\u001a\u001c\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\u001a\u001a\u00020$\"\u00020\rH\u0007\u001a\u001c\u0010'\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\n\u0010\u001a\u001a\u00020&\"\u00020\u000fH\u0007\u001a/\u0010(\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0007¢\u0006\u0004\b(\u0010\u0004\u001a\u0019\u0010)\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0019\u0010*\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0019\u0010+\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0087\b\u001a\u0019\u0010,\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\b\u001a\u0019\u0010-\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\b\u001a\u0019\u0010.\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000fH\u0087\b\u001a7\u0010/\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u0000H\u0007¢\u0006\u0004\b/\u0010\u0012\u001a!\u00100\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0087\b\u001a!\u00101\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0087\b\u001a!\u00102\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0087\b\u001a!\u00103\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0087\b\u001a!\u00104\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0087\b\u001a!\u00105\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0087\b\u001a;\u00106\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0019\"\u00028\u0000H\u0007¢\u0006\u0004\b6\u0010\u001c\u001a\u001c\u00107\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\n\u0010\u001a\u001a\u00020\u001d\"\u00020\u0005H\u0007\u001a\u001c\u00108\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\n\u0010\u001a\u001a\u00020\u001f\"\u00020\u0007H\u0007\u001a\u001c\u00109\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u001a\u001a\u00020!\"\u00020\tH\u0007\u001a\u001c\u0010:\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\n\u0010\u001a\u001a\u00020#\"\u00020\u000bH\u0007\u001a\u001c\u0010;\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\u001a\u001a\u00020$\"\u00020\rH\u0007\u001a\u001c\u0010<\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u000f2\n\u0010\u001a\u001a\u00020&\"\u00020\u000fH\u0007¨\u0006="}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, ak.av, "b", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "extends", "", "e", "", "protected", "", "instanceof", "", "strictfp", "", "private", "c", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "finally", "f", "transient", "synchronized", "volatile", "abstract", "", "other", "d", "(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "package", "", "g", "", "implements", "", "", "interface", "", "continue", "w", "h", ak.aD, "q", ak.aH, "n", "k", "x", ak.aC, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "r", ak.aG, "o", "l", "y", "j", "B", ak.aB, "v", ak.ax, "m", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/ComparisonsKt")
/* renamed from: kotlin.comparisons.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cif {
    @iz1(version = "1.1")
    @um0
    private static final short A(short s, short s2, short s3) {
        return (short) Math.min((int) s, Math.min((int) s2, (int) s3));
    }

    @iz1(version = "1.4")
    public static final short B(short s, @m41 short... other) {
        Csuper.m30700throw(other, "other");
        for (short s2 : other) {
            s = (short) Math.min((int) s, (int) s2);
        }
        return s;
    }

    @iz1(version = "1.4")
    public static final long a(long j, @m41 long... other) {
        Csuper.m30700throw(other, "other");
        for (long j2 : other) {
            j = Math.max(j, j2);
        }
        return j;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final double m30290abstract(double d, double d2, double d3) {
        return Math.max(d, Math.max(d2, d3));
    }

    @m41
    @iz1(version = "1.1")
    public static <T extends Comparable<? super T>> T b(@m41 T a, @m41 T b) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(b, "b");
        return a.compareTo(b) >= 0 ? a : b;
    }

    @m41
    @iz1(version = "1.1")
    public static final <T extends Comparable<? super T>> T c(@m41 T a, @m41 T b, @m41 T c) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(b, "b");
        Csuper.m30700throw(c, "c");
        return (T) Cdo.b(a, Cdo.b(b, c));
    }

    @iz1(version = "1.4")
    /* renamed from: continue, reason: not valid java name */
    public static final double m30291continue(double d, @m41 double... other) {
        Csuper.m30700throw(other, "other");
        for (double d2 : other) {
            d = Math.max(d, d2);
        }
        return d;
    }

    @m41
    @iz1(version = "1.4")
    public static final <T extends Comparable<? super T>> T d(@m41 T a, @m41 T... other) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(other, "other");
        for (T t : other) {
            a = (T) Cdo.b(a, t);
        }
        return a;
    }

    @iz1(version = "1.1")
    @um0
    private static final short e(short s, short s2) {
        return (short) Math.max((int) s, (int) s2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: extends, reason: not valid java name */
    private static final byte m30292extends(byte b, byte b2) {
        return (byte) Math.max((int) b, (int) b2);
    }

    @iz1(version = "1.1")
    @um0
    private static final short f(short s, short s2, short s3) {
        return (short) Math.max((int) s, Math.max((int) s2, (int) s3));
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final byte m30293finally(byte b, byte b2, byte b3) {
        return (byte) Math.max((int) b, Math.max((int) b2, (int) b3));
    }

    @iz1(version = "1.4")
    public static final short g(short s, @m41 short... other) {
        Csuper.m30700throw(other, "other");
        for (short s2 : other) {
            s = (short) Math.max((int) s, (int) s2);
        }
        return s;
    }

    @iz1(version = "1.1")
    @um0
    private static final byte h(byte b, byte b2) {
        return (byte) Math.min((int) b, (int) b2);
    }

    @iz1(version = "1.1")
    @um0
    private static final byte i(byte b, byte b2, byte b3) {
        return (byte) Math.min((int) b, Math.min((int) b2, (int) b3));
    }

    @iz1(version = "1.4")
    /* renamed from: implements, reason: not valid java name */
    public static final int m30294implements(int i, @m41 int... other) {
        Csuper.m30700throw(other, "other");
        for (int i2 : other) {
            i = Math.max(i, i2);
        }
        return i;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: instanceof, reason: not valid java name */
    private static final long m30295instanceof(long j, long j2) {
        return Math.max(j, j2);
    }

    @iz1(version = "1.4")
    /* renamed from: interface, reason: not valid java name */
    public static final float m30296interface(float f, @m41 float... other) {
        Csuper.m30700throw(other, "other");
        for (float f2 : other) {
            f = Math.max(f, f2);
        }
        return f;
    }

    @iz1(version = "1.4")
    public static final byte j(byte b, @m41 byte... other) {
        Csuper.m30700throw(other, "other");
        for (byte b2 : other) {
            b = (byte) Math.min((int) b, (int) b2);
        }
        return b;
    }

    @iz1(version = "1.1")
    @um0
    private static final double k(double d, double d2) {
        return Math.min(d, d2);
    }

    @iz1(version = "1.1")
    @um0
    private static final double l(double d, double d2, double d3) {
        return Math.min(d, Math.min(d2, d3));
    }

    @iz1(version = "1.4")
    public static final double m(double d, @m41 double... other) {
        Csuper.m30700throw(other, "other");
        for (double d2 : other) {
            d = Math.min(d, d2);
        }
        return d;
    }

    @iz1(version = "1.1")
    @um0
    private static final float n(float f, float f2) {
        return Math.min(f, f2);
    }

    @iz1(version = "1.1")
    @um0
    private static final float o(float f, float f2, float f3) {
        return Math.min(f, Math.min(f2, f3));
    }

    @iz1(version = "1.4")
    public static final float p(float f, @m41 float... other) {
        Csuper.m30700throw(other, "other");
        for (float f2 : other) {
            f = Math.min(f, f2);
        }
        return f;
    }

    @iz1(version = "1.4")
    /* renamed from: package, reason: not valid java name */
    public static final byte m30297package(byte b, @m41 byte... other) {
        Csuper.m30700throw(other, "other");
        for (byte b2 : other) {
            b = (byte) Math.max((int) b, (int) b2);
        }
        return b;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final double m30298private(double d, double d2) {
        return Math.max(d, d2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: protected, reason: not valid java name */
    private static final int m30299protected(int i, int i2) {
        return Math.max(i, i2);
    }

    @iz1(version = "1.1")
    @um0
    private static final int q(int i, int i2) {
        return Math.min(i, i2);
    }

    @iz1(version = "1.1")
    @um0
    private static final int r(int i, int i2, int i3) {
        return Math.min(i, Math.min(i2, i3));
    }

    @iz1(version = "1.4")
    public static final int s(int i, @m41 int... other) {
        Csuper.m30700throw(other, "other");
        for (int i2 : other) {
            i = Math.min(i, i2);
        }
        return i;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final float m30300strictfp(float f, float f2) {
        return Math.max(f, f2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: synchronized, reason: not valid java name */
    private static final long m30301synchronized(long j, long j2, long j3) {
        return Math.max(j, Math.max(j2, j3));
    }

    @iz1(version = "1.1")
    @um0
    private static final long t(long j, long j2) {
        return Math.min(j, j2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: transient, reason: not valid java name */
    private static final int m30302transient(int i, int i2, int i3) {
        return Math.max(i, Math.max(i2, i3));
    }

    @iz1(version = "1.1")
    @um0
    private static final long u(long j, long j2, long j3) {
        return Math.min(j, Math.min(j2, j3));
    }

    @iz1(version = "1.4")
    public static final long v(long j, @m41 long... other) {
        Csuper.m30700throw(other, "other");
        for (long j2 : other) {
            j = Math.min(j, j2);
        }
        return j;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final float m30303volatile(float f, float f2, float f3) {
        return Math.max(f, Math.max(f2, f3));
    }

    @m41
    @iz1(version = "1.1")
    public static final <T extends Comparable<? super T>> T w(@m41 T a, @m41 T b) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(b, "b");
        return a.compareTo(b) <= 0 ? a : b;
    }

    @m41
    @iz1(version = "1.1")
    public static final <T extends Comparable<? super T>> T x(@m41 T a, @m41 T b, @m41 T c) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(b, "b");
        Csuper.m30700throw(c, "c");
        return (T) w(a, w(b, c));
    }

    @m41
    @iz1(version = "1.4")
    public static final <T extends Comparable<? super T>> T y(@m41 T a, @m41 T... other) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(other, "other");
        for (T t : other) {
            a = (T) w(a, t);
        }
        return a;
    }

    @iz1(version = "1.1")
    @um0
    private static final short z(short s, short s2) {
        return (short) Math.min((int) s, (int) s2);
    }
}
