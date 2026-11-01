package kotlin.comparisons;

import android.support.v4.ab2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.oc2;
import android.support.v4.um0;
import com.umeng.analytics.pro.ak;
import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u001a\"\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\"\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a+\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a+\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a+\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a+\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a&\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0018\u001a\u00020\u0017\"\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a&\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\n\u0010\u0018\u001a\u00020\u001b\"\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a&\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\n\u0010\u0018\u001a\u00020\u001e\"\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a&\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\n\u0010\u0018\u001a\u00020!\"\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\"\u0010$\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b$\u0010\u0004\u001a\"\u0010%\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0007\u001a\"\u0010&\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b&\u0010\n\u001a\"\u0010'\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010\r\u001a+\u0010(\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010\u0010\u001a+\u0010)\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b)\u0010\u0012\u001a+\u0010*\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0014\u001a+\u0010+\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010\u0016\u001a&\u0010,\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0018\u001a\u00020\u0017\"\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u0010\u001a\u001a&\u0010-\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00052\n\u0010\u0018\u001a\u00020\u001b\"\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b-\u0010\u001d\u001a&\u0010.\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\n\u0010\u0018\u001a\u00020\u001e\"\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b.\u0010 \u001a&\u0010/\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u000b2\n\u0010\u0018\u001a\u00020!\"\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010#\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Landroid/support/v4/ja2;", ak.av, "b", "if", "(II)I", "Landroid/support/v4/oa2;", "break", "(JJ)J", "Landroid/support/v4/ea2;", "for", "(BB)B", "Landroid/support/v4/ab2;", "do", "(SS)S", "c", "else", "(III)I", "catch", "(JJJ)J", "this", "(BBB)B", "case", "(SSS)S", "Lkotlin/protected;", "other", "new", "(I[I)I", "Lkotlin/transient;", "try", "(J[J)J", "Lkotlin/interface;", "goto", "(B[B)B", "Lkotlin/instanceof;", "class", "(S[S)S", "final", "static", "super", "const", "native", "switch", "return", "import", "throw", "while", "public", "throws", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/UComparisonsKt")
/* renamed from: kotlin.comparisons.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: break, reason: not valid java name */
    public static long m30333break(long j, long j2) {
        return oc2.m5557else(j, j2) >= 0 ? j : j2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final short m30334case(short s, short s2, short s3) {
        return m30338do(s, m30338do(s2, s3));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: catch, reason: not valid java name */
    private static final long m30335catch(long j, long j2, long j3) {
        return m30333break(j, m30333break(j2, j3));
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: class, reason: not valid java name */
    public static final short m30336class(short s, @m41 short... other) {
        Csuper.m30700throw(other, "other");
        for (short s2 : other) {
            s = m30338do(s, s2);
        }
        return s;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: const, reason: not valid java name */
    public static final short m30337const(short s, short s2) {
        return Csuper.m30692public(s & ab2.f80for, 65535 & s2) <= 0 ? s : s2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: do, reason: not valid java name */
    public static final short m30338do(short s, short s2) {
        return Csuper.m30692public(s & ab2.f80for, 65535 & s2) >= 0 ? s : s2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: else, reason: not valid java name */
    private static final int m30339else(int i, int i2, int i3) {
        return m30343if(i, m30343if(i2, i3));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: final, reason: not valid java name */
    public static int m30340final(int i, int i2) {
        return oc2.m5558for(i, i2) <= 0 ? i : i2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: for, reason: not valid java name */
    public static final byte m30341for(byte b, byte b2) {
        return Csuper.m30692public(b & 255, b2 & 255) >= 0 ? b : b2;
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: goto, reason: not valid java name */
    public static final byte m30342goto(byte b, @m41 byte... other) {
        Csuper.m30700throw(other, "other");
        for (byte b2 : other) {
            b = m30341for(b, b2);
        }
        return b;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: if, reason: not valid java name */
    public static int m30343if(int i, int i2) {
        return oc2.m5558for(i, i2) >= 0 ? i : i2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: import, reason: not valid java name */
    private static final short m30344import(short s, short s2, short s3) {
        return m30337const(s, m30337const(s2, s3));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: native, reason: not valid java name */
    private static final int m30345native(int i, int i2, int i3) {
        return m30340final(i, m30340final(i2, i3));
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: new, reason: not valid java name */
    public static final int m30346new(int i, @m41 int... other) {
        Csuper.m30700throw(other, "other");
        for (int i2 : other) {
            i = m30343if(i, i2);
        }
        return i;
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: public, reason: not valid java name */
    public static final byte m30347public(byte b, @m41 byte... other) {
        Csuper.m30700throw(other, "other");
        for (byte b2 : other) {
            b = m30350super(b, b2);
        }
        return b;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: return, reason: not valid java name */
    private static final byte m30348return(byte b, byte b2, byte b3) {
        return m30350super(b, m30350super(b2, b3));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: static, reason: not valid java name */
    public static long m30349static(long j, long j2) {
        return oc2.m5557else(j, j2) <= 0 ? j : j2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: super, reason: not valid java name */
    public static final byte m30350super(byte b, byte b2) {
        return Csuper.m30692public(b & 255, b2 & 255) <= 0 ? b : b2;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final long m30351switch(long j, long j2, long j3) {
        return m30349static(j, m30349static(j2, j3));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: this, reason: not valid java name */
    private static final byte m30352this(byte b, byte b2, byte b3) {
        return m30341for(b, m30341for(b2, b3));
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: throw, reason: not valid java name */
    public static final int m30353throw(int i, @m41 int... other) {
        Csuper.m30700throw(other, "other");
        for (int i2 : other) {
            i = m30340final(i, i2);
        }
        return i;
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: throws, reason: not valid java name */
    public static final short m30354throws(short s, @m41 short... other) {
        Csuper.m30700throw(other, "other");
        for (short s2 : other) {
            s = m30337const(s, s2);
        }
        return s;
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: try, reason: not valid java name */
    public static final long m30355try(long j, @m41 long... other) {
        Csuper.m30700throw(other, "other");
        for (long j2 : other) {
            j = m30333break(j, j2);
        }
        return j;
    }

    @iz1(version = "1.4")
    @Cbreak
    /* renamed from: while, reason: not valid java name */
    public static final long m30356while(long j, @m41 long... other) {
        Csuper.m30700throw(other, "other");
        for (long j2 : other) {
            j = m30349static(j, j2);
        }
        return j;
    }
}
