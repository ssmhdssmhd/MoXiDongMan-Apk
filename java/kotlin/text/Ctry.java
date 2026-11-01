package kotlin.text;

import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.pl2;
import android.support.v4.um0;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import kotlin.Cthis;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0010\f\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0001H\u0007\u001a\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\f\u0010\t\u001a\u00020\u0000*\u00020\u0001H\u0007\u001a\u0014\u0010\n\u001a\u00020\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007\u001a\f\u0010\f\u001a\u00020\u000b*\u00020\u0000H\u0007\u001a\u0015\u0010\u000e\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\r\u001a\u00020\u000bH\u0087\n\u001a\u001c\u0010\u0011\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u001a\n\u0010\u0012\u001a\u00020\u000f*\u00020\u0000¨\u0006\u0013"}, d2 = {"", "", "strictfp", "radix", "volatile", "interface", "(C)Ljava/lang/Integer;", "protected", "(CI)Ljava/lang/Integer;", "abstract", "continue", "", ak.av, "other", "synchronized", "", "ignoreCase", "transient", "instanceof", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/CharsKt")
/* renamed from: kotlin.text.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends Cnew {
    @m41
    @iz1(version = "1.5")
    public static final String a(char c) {
        return pl2.m6116do(c);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: abstract, reason: not valid java name */
    public static final char m31239abstract(int i) {
        if (i >= 0 && 9 >= i) {
            return (char) (i + 48);
        }
        throw new IllegalArgumentException("Int " + i + " is not a decimal digit");
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: continue, reason: not valid java name */
    public static final char m31240continue(int i, int i2) {
        if (2 > i2 || 36 < i2) {
            throw new IllegalArgumentException("Invalid radix: " + i2 + ". Valid radix values are in range 2..36");
        }
        if (i >= 0 && i < i2) {
            return (char) (i < 10 ? i + 48 : ((char) (i + 65)) - '\n');
        }
        throw new IllegalArgumentException("Digit " + i + " does not represent a valid digit in radix " + i2);
    }

    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ boolean m31241implements(char c, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m31247transient(c, c2, z);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static final boolean m31242instanceof(char c) {
        return 55296 <= c && 57343 >= c;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: interface, reason: not valid java name */
    public static final Integer m31243interface(char c) {
        Integer numValueOf = Integer.valueOf(Cnew.m31206if(c, 10));
        if (numValueOf.intValue() >= 0) {
            return numValueOf;
        }
        return null;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: protected, reason: not valid java name */
    public static final Integer m31244protected(char c, int i) {
        Cnew.m31199do(i);
        Integer numValueOf = Integer.valueOf(Cnew.m31206if(c, i));
        if (numValueOf.intValue() >= 0) {
            return numValueOf;
        }
        return null;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: strictfp, reason: not valid java name */
    public static final int m31245strictfp(char c) {
        int iM31206if = Cnew.m31206if(c, 10);
        if (iM31206if >= 0) {
            return iM31206if;
        }
        throw new IllegalArgumentException("Char " + c + " is not a decimal digit");
    }

    @um0
    /* renamed from: synchronized, reason: not valid java name */
    private static final String m31246synchronized(char c, String str) {
        return String.valueOf(c) + str;
    }

    /* renamed from: transient, reason: not valid java name */
    public static final boolean m31247transient(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c);
        char upperCase2 = Character.toUpperCase(c2);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: volatile, reason: not valid java name */
    public static final int m31248volatile(char c, int i) {
        Integer numM31244protected = m31244protected(c, i);
        if (numM31244protected != null) {
            return numM31244protected.intValue();
        }
        throw new IllegalArgumentException("Char " + c + " is not a digit in the given radix=" + i);
    }
}
