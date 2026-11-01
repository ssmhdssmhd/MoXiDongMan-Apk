package kotlin.text;

import android.support.v4.ab2;
import android.support.v4.ea2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.oc2;
import android.support.v4.qr0;
import android.support.v4.wp0;
import android.support.v4.z41;
import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wp0(name = "UStringsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\u001a\u001e\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001e\u0010\u0007\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u001e\u0010\n\u001a\u00020\u0003*\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001e\u0010\r\u001a\u00020\u0003*\u00020\f2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0016\u0010\u000f\u001a\u00020\u0000*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001e\u0010\u0011\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0016\u0010\u0013\u001a\u00020\u0006*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001e\u0010\u0015\u001a\u00020\u0006*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0016\u0010\u0017\u001a\u00020\t*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001e\u0010\u0019\u001a\u00020\t*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0016\u0010\u001b\u001a\u00020\f*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001e\u0010\u001d\u001a\u00020\f*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u0000*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010 \u001a\u0004\u0018\u00010\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010!\u001a\u0004\u0018\u00010\u0006*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010\"\u001a\u0004\u0018\u00010\u0006*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010#\u001a\u0004\u0018\u00010\t*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010$\u001a\u0004\u0018\u00010\t*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010%\u001a\u0004\u0018\u00010\f*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010&\u001a\u0004\u0018\u00010\f*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Landroid/support/v4/ea2;", "", "radix", "", "if", "(BI)Ljava/lang/String;", "Landroid/support/v4/ab2;", "new", "(SI)Ljava/lang/String;", "Landroid/support/v4/ja2;", "for", "(II)Ljava/lang/String;", "Landroid/support/v4/oa2;", "do", "(JI)Ljava/lang/String;", "try", "(Ljava/lang/String;)B", "case", "(Ljava/lang/String;I)B", "while", "(Ljava/lang/String;)S", "import", "(Ljava/lang/String;I)S", "this", "(Ljava/lang/String;)I", "break", "(Ljava/lang/String;I)I", "const", "(Ljava/lang/String;)J", "final", "(Ljava/lang/String;I)J", "else", "goto", "native", "public", "catch", "class", "super", "throw", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.text.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends {
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: break, reason: not valid java name */
    public static final int m31153break(@m41 String toUInt, int i) {
        Csuper.m30700throw(toUInt, "$this$toUInt");
        ja2 ja2VarM31156class = m31156class(toUInt, i);
        if (ja2VarM31156class != null) {
            return ja2VarM31156class.t();
        }
        Cpublic.h0(toUInt);
        throw new qr0();
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: case, reason: not valid java name */
    public static final byte m31154case(@m41 String toUByte, int i) {
        Csuper.m30700throw(toUByte, "$this$toUByte");
        ea2 ea2VarM31162goto = m31162goto(toUByte, i);
        if (ea2VarM31162goto != null) {
            return ea2VarM31162goto.r();
        }
        Cpublic.h0(toUByte);
        throw new qr0();
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: catch, reason: not valid java name */
    public static final ja2 m31155catch(@m41 String toUIntOrNull) {
        Csuper.m30700throw(toUIntOrNull, "$this$toUIntOrNull");
        return m31156class(toUIntOrNull, 10);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: class, reason: not valid java name */
    public static final ja2 m31156class(@m41 String toUIntOrNull, int i) {
        Csuper.m30700throw(toUIntOrNull, "$this$toUIntOrNull");
        Cnew.m31199do(i);
        int length = toUIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = toUIntOrNull.charAt(0);
        int i3 = 1;
        if (Csuper.m30692public(cCharAt, 48) >= 0) {
            i3 = 0;
        } else if (length == 1 || cCharAt != '+') {
            return null;
        }
        int iM3772goto = ja2.m3772goto(i);
        int iM5561new = 119304647;
        while (i3 < length) {
            int iM31206if = Cnew.m31206if(toUIntOrNull.charAt(i3), i);
            if (iM31206if < 0) {
                return null;
            }
            if (oc2.m5558for(i2, iM5561new) > 0) {
                if (iM5561new == 119304647) {
                    iM5561new = oc2.m5561new(-1, iM3772goto);
                    if (oc2.m5558for(i2, iM5561new) > 0) {
                    }
                }
                return null;
            }
            int iM3772goto2 = ja2.m3772goto(i2 * iM3772goto);
            int iM3772goto3 = ja2.m3772goto(ja2.m3772goto(iM31206if) + iM3772goto2);
            if (oc2.m5558for(iM3772goto3, iM3772goto2) < 0) {
                return null;
            }
            i3++;
            i2 = iM3772goto3;
        }
        return ja2.m3773if(i2);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: const, reason: not valid java name */
    public static final long m31157const(@m41 String toULong) {
        Csuper.m30700throw(toULong, "$this$toULong");
        oa2 oa2VarM31168super = m31168super(toULong);
        if (oa2VarM31168super != null) {
            return oa2VarM31168super.t();
        }
        Cpublic.h0(toULong);
        throw new qr0();
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: do, reason: not valid java name */
    public static final String m31158do(long j, int i) {
        return oc2.m5555class(j, Cnew.m31199do(i));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: else, reason: not valid java name */
    public static final ea2 m31159else(@m41 String toUByteOrNull) {
        Csuper.m30700throw(toUByteOrNull, "$this$toUByteOrNull");
        return m31162goto(toUByteOrNull, 10);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: final, reason: not valid java name */
    public static final long m31160final(@m41 String toULong, int i) {
        Csuper.m30700throw(toULong, "$this$toULong");
        oa2 oa2VarM31170throw = m31170throw(toULong, i);
        if (oa2VarM31170throw != null) {
            return oa2VarM31170throw.t();
        }
        Cpublic.h0(toULong);
        throw new qr0();
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: for, reason: not valid java name */
    public static final String m31161for(int i, int i2) {
        String string = Long.toString(i & 4294967295L, Cnew.m31199do(i2));
        Csuper.m30696super(string, "java.lang.Long.toString(this, checkRadix(radix))");
        return string;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: goto, reason: not valid java name */
    public static final ea2 m31162goto(@m41 String toUByteOrNull, int i) {
        Csuper.m30700throw(toUByteOrNull, "$this$toUByteOrNull");
        ja2 ja2VarM31156class = m31156class(toUByteOrNull, i);
        if (ja2VarM31156class == null) {
            return null;
        }
        int iT = ja2VarM31156class.t();
        if (oc2.m5558for(iT, ja2.m3772goto(255)) > 0) {
            return null;
        }
        return ea2.m1730if(ea2.m1729goto((byte) iT));
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: if, reason: not valid java name */
    public static final String m31163if(byte b, int i) {
        String string = Integer.toString(b & 255, Cnew.m31199do(i));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return string;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: import, reason: not valid java name */
    public static final short m31164import(@m41 String toUShort, int i) {
        Csuper.m30700throw(toUShort, "$this$toUShort");
        ab2 ab2VarM31167public = m31167public(toUShort, i);
        if (ab2VarM31167public != null) {
            return ab2VarM31167public.r();
        }
        Cpublic.h0(toUShort);
        throw new qr0();
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: native, reason: not valid java name */
    public static final ab2 m31165native(@m41 String toUShortOrNull) {
        Csuper.m30700throw(toUShortOrNull, "$this$toUShortOrNull");
        return m31167public(toUShortOrNull, 10);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: new, reason: not valid java name */
    public static final String m31166new(short s, int i) {
        String string = Integer.toString(s & ab2.f80for, Cnew.m31199do(i));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return string;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: public, reason: not valid java name */
    public static final ab2 m31167public(@m41 String toUShortOrNull, int i) {
        Csuper.m30700throw(toUShortOrNull, "$this$toUShortOrNull");
        ja2 ja2VarM31156class = m31156class(toUShortOrNull, i);
        if (ja2VarM31156class == null) {
            return null;
        }
        int iT = ja2VarM31156class.t();
        if (oc2.m5558for(iT, ja2.m3772goto(65535)) > 0) {
            return null;
        }
        return ab2.m141if(ab2.m140goto((short) iT));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: super, reason: not valid java name */
    public static final oa2 m31168super(@m41 String toULongOrNull) {
        Csuper.m30700throw(toULongOrNull, "$this$toULongOrNull");
        return m31170throw(toULongOrNull, 10);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: this, reason: not valid java name */
    public static final int m31169this(@m41 String toUInt) {
        Csuper.m30700throw(toUInt, "$this$toUInt");
        ja2 ja2VarM31155catch = m31155catch(toUInt);
        if (ja2VarM31155catch != null) {
            return ja2VarM31155catch.t();
        }
        Cpublic.h0(toUInt);
        throw new qr0();
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: throw, reason: not valid java name */
    public static final oa2 m31170throw(@m41 String toULongOrNull, int i) {
        Csuper.m30700throw(toULongOrNull, "$this$toULongOrNull");
        Cnew.m31199do(i);
        int length = toULongOrNull.length();
        if (length == 0) {
            return null;
        }
        long j = -1;
        int i2 = 0;
        char cCharAt = toULongOrNull.charAt(0);
        if (Csuper.m30692public(cCharAt, 48) < 0) {
            if (length == 1 || cCharAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long jM5524goto = oa2.m5524goto(i);
        long j2 = 0;
        long jM5559goto = 512409557603043100L;
        while (i2 < length) {
            if (Cnew.m31206if(toULongOrNull.charAt(i2), i) < 0) {
                return null;
            }
            if (oc2.m5557else(j2, jM5559goto) > 0) {
                if (jM5559goto == 512409557603043100L) {
                    jM5559goto = oc2.m5559goto(j, jM5524goto);
                    if (oc2.m5557else(j2, jM5559goto) > 0) {
                    }
                }
                return null;
            }
            long jM5524goto2 = oa2.m5524goto(j2 * jM5524goto);
            long jM5524goto3 = oa2.m5524goto(oa2.m5524goto(ja2.m3772goto(r15) & 4294967295L) + jM5524goto2);
            if (oc2.m5557else(jM5524goto3, jM5524goto2) < 0) {
                return null;
            }
            i2++;
            j2 = jM5524goto3;
            j = -1;
        }
        return oa2.m5525if(j2);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: try, reason: not valid java name */
    public static final byte m31171try(@m41 String toUByte) {
        Csuper.m30700throw(toUByte, "$this$toUByte");
        ea2 ea2VarM31159else = m31159else(toUByte);
        if (ea2VarM31159else != null) {
            return ea2VarM31159else.r();
        }
        Cpublic.h0(toUByte);
        throw new qr0();
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: while, reason: not valid java name */
    public static final short m31172while(@m41 String toUShort) {
        Csuper.m30700throw(toUShort, "$this$toUShort");
        ab2 ab2VarM31165native = m31165native(toUShort);
        if (ab2VarM31165native != null) {
            return ab2VarM31165native.r();
        }
        Cpublic.h0(toUShort);
        throw new qr0();
    }
}
