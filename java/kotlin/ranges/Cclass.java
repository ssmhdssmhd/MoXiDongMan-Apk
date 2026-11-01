package kotlin.ranges;

import android.support.v4.ab2;
import android.support.v4.ea2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.na2;
import android.support.v4.oa2;
import android.support.v4.oc2;
import android.support.v4.sa2;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import java.util.NoSuchElementException;
import kotlin.Cbreak;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.random.Celse;
import kotlin.random.Ctry;
import kotlin.ranges.Celse;
import kotlin.ranges.Cthis;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001e\u0010\n\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001e\u0010\f\u001a\u00020\u0005*\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0087\bø\u0001\u0000\u001a\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0087\bø\u0001\u0000\u001a\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0000\u001a\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0000\u001a!\u0010\u0014\u001a\u00020\u0013*\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a!\u0010\u0016\u001a\u00020\u0013*\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001f\u0010\u001a\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001f\u0010\u001c\u001a\u00020\u0013*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001f\u0010\u001e\u001a\u00020\u0013*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001f\u0010 \u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u001f\u0010#\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\"H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010%\u001a\u00020\u0013*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\"H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u001f\u0010)\u001a\u00020(*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u001f\u0010+\u001a\u00020(*\u00020\u00012\u0006\u0010'\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\u001f\u0010.\u001a\u00020-*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b.\u0010/\u001a\u001f\u00100\u001a\u00020(*\u00020\"2\u0006\u0010'\u001a\u00020\"H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a\f\u00102\u001a\u00020(*\u00020(H\u0007\u001a\f\u00103\u001a\u00020-*\u00020-H\u0007\u001a\u0015\u00106\u001a\u00020(*\u00020(2\u0006\u00105\u001a\u000204H\u0087\u0004\u001a\u0015\u00108\u001a\u00020-*\u00020-2\u0006\u00105\u001a\u000207H\u0087\u0004\u001a\u001f\u00109\u001a\u00020\u0000*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a\u001f\u0010;\u001a\u00020\u0000*\u00020\u00012\u0006\u0010'\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a\u001f\u0010=\u001a\u00020\u0004*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a\u001f\u0010?\u001a\u00020\u0000*\u00020\"2\u0006\u0010'\u001a\u00020\"H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001a\u001e\u0010B\u001a\u00020\u0001*\u00020\u00012\u0006\u0010A\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\bB\u0010C\u001a\u001e\u0010D\u001a\u00020\u0005*\u00020\u00052\u0006\u0010A\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bD\u0010E\u001a\u001e\u0010F\u001a\u00020\u0018*\u00020\u00182\u0006\u0010A\u001a\u00020\u0018H\u0007ø\u0001\u0000¢\u0006\u0004\bF\u0010G\u001a\u001e\u0010H\u001a\u00020\"*\u00020\"2\u0006\u0010A\u001a\u00020\"H\u0007ø\u0001\u0000¢\u0006\u0004\bH\u0010I\u001a\u001e\u0010K\u001a\u00020\u0001*\u00020\u00012\u0006\u0010J\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\bK\u0010C\u001a\u001e\u0010L\u001a\u00020\u0005*\u00020\u00052\u0006\u0010J\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bL\u0010E\u001a\u001e\u0010M\u001a\u00020\u0018*\u00020\u00182\u0006\u0010J\u001a\u00020\u0018H\u0007ø\u0001\u0000¢\u0006\u0004\bM\u0010G\u001a\u001e\u0010N\u001a\u00020\"*\u00020\"2\u0006\u0010J\u001a\u00020\"H\u0007ø\u0001\u0000¢\u0006\u0004\bN\u0010I\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010J\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\bO\u0010P\u001a&\u0010Q\u001a\u00020\u0005*\u00020\u00052\u0006\u0010A\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bQ\u0010R\u001a&\u0010S\u001a\u00020\u0018*\u00020\u00182\u0006\u0010A\u001a\u00020\u00182\u0006\u0010J\u001a\u00020\u0018H\u0007ø\u0001\u0000¢\u0006\u0004\bS\u0010T\u001a&\u0010U\u001a\u00020\"*\u00020\"2\u0006\u0010A\u001a\u00020\"2\u0006\u0010J\u001a\u00020\"H\u0007ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a$\u0010Y\u001a\u00020\u0001*\u00020\u00012\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00010WH\u0007ø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a$\u0010[\u001a\u00020\u0005*\u00020\u00052\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00050WH\u0007ø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"Landroid/support/v4/na2;", "Landroid/support/v4/ja2;", "finally", "(Landroid/support/v4/na2;)I", "Landroid/support/v4/sa2;", "Landroid/support/v4/oa2;", "private", "(Landroid/support/v4/sa2;)J", "Lkotlin/random/try;", "random", "package", "(Landroid/support/v4/na2;Lkotlin/random/try;)I", "abstract", "(Landroid/support/v4/sa2;Lkotlin/random/try;)J", "continue", "volatile", "strictfp", "interface", "element", "", "public", "(Landroid/support/v4/na2;Landroid/support/v4/ja2;)Z", "throw", "(Landroid/support/v4/sa2;Landroid/support/v4/oa2;)Z", "Landroid/support/v4/ea2;", ES6Iterator.VALUE_PROPERTY, "super", "(Landroid/support/v4/na2;B)Z", "import", "(Landroid/support/v4/sa2;B)Z", "while", "(Landroid/support/v4/sa2;I)Z", "return", "(Landroid/support/v4/na2;J)Z", "Landroid/support/v4/ab2;", "native", "(Landroid/support/v4/na2;S)Z", "static", "(Landroid/support/v4/sa2;S)Z", TypedValues.Transition.S_TO, "Lkotlin/ranges/else;", "default", "(BB)Lkotlin/ranges/else;", "throws", "(II)Lkotlin/ranges/else;", "Lkotlin/ranges/this;", "extends", "(JJ)Lkotlin/ranges/this;", "switch", "(SS)Lkotlin/ranges/else;", "protected", "transient", "", "step", "implements", "", "instanceof", "b", "(BB)Landroid/support/v4/na2;", ak.av, "(II)Landroid/support/v4/na2;", "c", "(JJ)Landroid/support/v4/sa2;", "synchronized", "(SS)Landroid/support/v4/na2;", "minimumValue", "if", "(II)I", "new", "(JJ)J", "for", "(BB)B", "do", "(SS)S", "maximumValue", "case", "goto", "else", "try", "catch", "(III)I", "const", "(JJJ)J", "class", "(BBB)B", "break", "(SSS)S", "Lkotlin/ranges/ClosedRange;", "range", "final", "(ILkotlin/ranges/ClosedRange;)I", "this", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/URangesKt")
/* renamed from: kotlin.ranges.class, reason: invalid class name */
/* loaded from: classes3.dex */
class Cclass {
    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    public static final na2 a(int i, int i2) {
        return oc2.m5558for(i2, 0) <= 0 ? na2.f4159case.m5147do() : new na2(i, ja2.m3772goto(i2 - 1), null);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: abstract, reason: not valid java name */
    public static final long m30897abstract(@m41 sa2 random, @m41 Ctry random2) {
        Csuper.m30700throw(random, "$this$random");
        Csuper.m30700throw(random2, "random");
        try {
            return Celse.m30844class(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    public static final na2 b(byte b, byte b2) {
        return Csuper.m30692public(b2 & 255, 0) <= 0 ? na2.f4159case.m5147do() : new na2(ja2.m3772goto(b & 255), ja2.m3772goto(ja2.m3772goto(r3) - 1), null);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: break, reason: not valid java name */
    public static final short m30898break(short s, short s2, short s3) {
        int i = s2 & ab2.f80for;
        int i2 = s3 & ab2.f80for;
        if (Csuper.m30692public(i, i2) <= 0) {
            int i3 = 65535 & s;
            return Csuper.m30692public(i3, i) < 0 ? s2 : Csuper.m30692public(i3, i2) > 0 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ab2.m(s3) + " is less than minimum " + ab2.m(s2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    public static final sa2 c(long j, long j2) {
        return oc2.m5557else(j2, 0L) <= 0 ? sa2.f6102case.m7357do() : new sa2(j, oa2.m5524goto(j2 - oa2.m5524goto(1 & 4294967295L)), null);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: case, reason: not valid java name */
    public static final int m30899case(int i, int i2) {
        return oc2.m5558for(i, i2) > 0 ? i2 : i;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: catch, reason: not valid java name */
    public static final int m30900catch(int i, int i2, int i3) {
        if (oc2.m5558for(i2, i3) <= 0) {
            return oc2.m5558for(i, i2) < 0 ? i2 : oc2.m5558for(i, i3) > 0 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ja2.o(i3) + " is less than minimum " + ja2.o(i2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: class, reason: not valid java name */
    public static final byte m30901class(byte b, byte b2, byte b3) {
        int i = b2 & 255;
        int i2 = b3 & 255;
        if (Csuper.m30692public(i, i2) <= 0) {
            int i3 = b & 255;
            return Csuper.m30692public(i3, i) < 0 ? b2 : Csuper.m30692public(i3, i2) > 0 ? b3 : b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ea2.m(b3) + " is less than minimum " + ea2.m(b2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: const, reason: not valid java name */
    public static final long m30902const(long j, long j2, long j3) {
        if (oc2.m5557else(j2, j3) <= 0) {
            return oc2.m5557else(j, j2) < 0 ? j2 : oc2.m5557else(j, j3) > 0 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + oa2.o(j3) + " is less than minimum " + oa2.o(j2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    @gf2(markerClass = {Cthis.class, Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: continue, reason: not valid java name */
    private static final ja2 m30903continue(na2 na2Var) {
        return m30925strictfp(na2Var, Ctry.Default);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: default, reason: not valid java name */
    public static final Celse m30904default(byte b, byte b2) {
        return Celse.f27932new.m30943do(ja2.m3772goto(b & 255), ja2.m3772goto(b2 & 255), -1);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: do, reason: not valid java name */
    public static final short m30905do(short s, short s2) {
        return Csuper.m30692public(s & ab2.f80for, 65535 & s2) < 0 ? s2 : s;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: else, reason: not valid java name */
    public static final byte m30906else(byte b, byte b2) {
        return Csuper.m30692public(b & 255, b2 & 255) > 0 ? b2 : b;
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: extends, reason: not valid java name */
    public static final Cthis m30907extends(long j, long j2) {
        return Cthis.f27944new.m30957do(j, j2, -1L);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: final, reason: not valid java name */
    public static final int m30908final(int i, @m41 ClosedRange<ja2> range) {
        Csuper.m30700throw(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ja2) Ccase.m30895volatile(ja2.m3773if(i), (ClosedFloatingPointRange) range)).t();
        }
        if (!range.isEmpty()) {
            return oc2.m5558for(i, ((ja2) range.getStart()).t()) < 0 ? ((ja2) range.getStart()).t() : oc2.m5558for(i, ((ja2) range.getEndInclusive()).t()) > 0 ? ((ja2) range.getEndInclusive()).t() : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final int m30909finally(na2 na2Var) {
        return m30919package(na2Var, Ctry.Default);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: for, reason: not valid java name */
    public static final byte m30910for(byte b, byte b2) {
        return Csuper.m30692public(b & 255, b2 & 255) < 0 ? b2 : b;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: goto, reason: not valid java name */
    public static final long m30911goto(long j, long j2) {
        return oc2.m5557else(j, j2) > 0 ? j2 : j;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: if, reason: not valid java name */
    public static final int m30912if(int i, int i2) {
        return oc2.m5558for(i, i2) < 0 ? i2 : i;
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: implements, reason: not valid java name */
    public static final Celse m30913implements(@m41 Celse step, int i) {
        Csuper.m30700throw(step, "$this$step");
        Ctry.m30958do(i > 0, Integer.valueOf(i));
        Celse.Cdo cdo = Celse.f27932new;
        int iM30940do = step.m30940do();
        int iM30942if = step.m30942if();
        if (step.m30941for() <= 0) {
            i = -i;
        }
        return cdo.m30943do(iM30940do, iM30942if, i);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: import, reason: not valid java name */
    public static final boolean m30914import(@m41 sa2 contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.m7356try(oa2.m5524goto(b & 255));
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: instanceof, reason: not valid java name */
    public static final Cthis m30915instanceof(@m41 Cthis step, long j) {
        Csuper.m30700throw(step, "$this$step");
        Ctry.m30958do(j > 0, Long.valueOf(j));
        Cthis.Cdo cdo = Cthis.f27944new;
        long jM30954do = step.m30954do();
        long jM30956if = step.m30956if();
        if (step.m30955for() <= 0) {
            j = -j;
        }
        return cdo.m30957do(jM30954do, jM30956if, j);
    }

    @gf2(markerClass = {kotlin.Cthis.class, Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: interface, reason: not valid java name */
    public static final oa2 m30916interface(@m41 sa2 randomOrNull, @m41 Ctry random) {
        Csuper.m30700throw(randomOrNull, "$this$randomOrNull");
        Csuper.m30700throw(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return oa2.m5525if(kotlin.random.Celse.m30844class(random, randomOrNull));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: native, reason: not valid java name */
    public static final boolean m30917native(@m41 na2 contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.m5146try(ja2.m3772goto(s & ab2.f80for));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: new, reason: not valid java name */
    public static final long m30918new(long j, long j2) {
        return oc2.m5557else(j, j2) < 0 ? j2 : j;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: package, reason: not valid java name */
    public static final int m30919package(@m41 na2 random, @m41 Ctry random2) {
        Csuper.m30700throw(random, "$this$random");
        Csuper.m30700throw(random2, "random");
        try {
            return kotlin.random.Celse.m30850goto(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final long m30920private(sa2 sa2Var) {
        return m30897abstract(sa2Var, Ctry.Default);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: protected, reason: not valid java name */
    public static final Celse m30921protected(@m41 Celse reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        return Celse.f27932new.m30943do(reversed.m30942if(), reversed.m30940do(), -reversed.m30941for());
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: public, reason: not valid java name */
    private static final boolean m30922public(na2 contains, ja2 ja2Var) {
        Csuper.m30700throw(contains, "$this$contains");
        return ja2Var != null && contains.m5146try(ja2Var.t());
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: return, reason: not valid java name */
    public static final boolean m30923return(@m41 na2 contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        return oa2.m5524goto(j >>> 32) == 0 && contains.m5146try(ja2.m3772goto((int) j));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: static, reason: not valid java name */
    public static final boolean m30924static(@m41 sa2 contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.m7356try(oa2.m5524goto(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @gf2(markerClass = {kotlin.Cthis.class, Cbreak.class})
    @iz1(version = "1.5")
    @z41
    /* renamed from: strictfp, reason: not valid java name */
    public static final ja2 m30925strictfp(@m41 na2 randomOrNull, @m41 Ctry random) {
        Csuper.m30700throw(randomOrNull, "$this$randomOrNull");
        Csuper.m30700throw(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return ja2.m3773if(kotlin.random.Celse.m30850goto(random, randomOrNull));
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: super, reason: not valid java name */
    public static final boolean m30926super(@m41 na2 contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.m5146try(ja2.m3772goto(b & 255));
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: switch, reason: not valid java name */
    public static final Celse m30927switch(short s, short s2) {
        return Celse.f27932new.m30943do(ja2.m3772goto(s & ab2.f80for), ja2.m3772goto(s2 & ab2.f80for), -1);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: synchronized, reason: not valid java name */
    public static final na2 m30928synchronized(short s, short s2) {
        return Csuper.m30692public(s2 & ab2.f80for, 0) <= 0 ? na2.f4159case.m5147do() : new na2(ja2.m3772goto(s & ab2.f80for), ja2.m3772goto(ja2.m3772goto(r3) - 1), null);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: this, reason: not valid java name */
    public static final long m30929this(long j, @m41 ClosedRange<oa2> range) {
        Csuper.m30700throw(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((oa2) Ccase.m30895volatile(oa2.m5525if(j), (ClosedFloatingPointRange) range)).t();
        }
        if (!range.isEmpty()) {
            return oc2.m5557else(j, ((oa2) range.getStart()).t()) < 0 ? ((oa2) range.getStart()).t() : oc2.m5557else(j, ((oa2) range.getEndInclusive()).t()) > 0 ? ((oa2) range.getEndInclusive()).t() : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final boolean m30930throw(sa2 contains, oa2 oa2Var) {
        Csuper.m30700throw(contains, "$this$contains");
        return oa2Var != null && contains.m7356try(oa2Var.t());
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: throws, reason: not valid java name */
    public static final Celse m30931throws(int i, int i2) {
        return Celse.f27932new.m30943do(i, i2, -1);
    }

    @m41
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: transient, reason: not valid java name */
    public static final Cthis m30932transient(@m41 Cthis reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        return Cthis.f27944new.m30957do(reversed.m30956if(), reversed.m30954do(), -reversed.m30955for());
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: try, reason: not valid java name */
    public static final short m30933try(short s, short s2) {
        return Csuper.m30692public(s & ab2.f80for, 65535 & s2) > 0 ? s2 : s;
    }

    @gf2(markerClass = {kotlin.Cthis.class, Cbreak.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final oa2 m30934volatile(sa2 sa2Var) {
        return m30916interface(sa2Var, Ctry.Default);
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    /* renamed from: while, reason: not valid java name */
    public static final boolean m30935while(@m41 sa2 contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.m7356try(oa2.m5524goto(i & 4294967295L));
    }
}
