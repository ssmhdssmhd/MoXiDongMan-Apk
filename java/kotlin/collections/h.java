package kotlin.collections;

import android.support.v4.ab2;
import android.support.v4.ea2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.wp0;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Cbreak;
import kotlin.Cinstanceof;
import kotlin.Cinterface;
import kotlin.Cprotected;
import kotlin.Ctransient;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\u001a\u001c\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001c\u0010\u0007\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00050\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u001c\u0010\u000b\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\t0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001c\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\r0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001c\u0010\u0012\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001c\u0010\u0014\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t0\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001c\u0010\u0016\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00010\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0013\u001a\u001c\u0010\u0017\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\r0\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"", "Landroid/support/v4/ea2;", "Lkotlin/interface;", "try", "(Ljava/util/Collection;)[B", "Landroid/support/v4/ja2;", "Lkotlin/protected;", "case", "(Ljava/util/Collection;)[I", "Landroid/support/v4/oa2;", "Lkotlin/transient;", "else", "(Ljava/util/Collection;)[J", "Landroid/support/v4/ab2;", "Lkotlin/instanceof;", "goto", "(Ljava/util/Collection;)[S", "", "if", "(Ljava/lang/Iterable;)I", "for", "(Ljava/lang/Iterable;)J", "do", "new", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/UCollectionsKt")
/* loaded from: classes3.dex */
class h {
    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: case, reason: not valid java name */
    public static final int[] m30090case(@m41 Collection<ja2> toUIntArray) {
        Csuper.m30700throw(toUIntArray, "$this$toUIntArray");
        int[] iArrM30799for = Cprotected.m30799for(toUIntArray.size());
        Iterator<ja2> it = toUIntArray.iterator();
        int i = 0;
        while (it.hasNext()) {
            Cprotected.m30807while(iArrM30799for, i, it.next().t());
            i++;
        }
        return iArrM30799for;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfUByte")
    /* renamed from: do, reason: not valid java name */
    public static final int m30091do(@m41 Iterable<ea2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<ea2> it = sum.iterator();
        int iM3772goto = 0;
        while (it.hasNext()) {
            iM3772goto = ja2.m3772goto(iM3772goto + ja2.m3772goto(it.next().r() & 255));
        }
        return iM3772goto;
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: else, reason: not valid java name */
    public static final long[] m30092else(@m41 Collection<oa2> toULongArray) {
        Csuper.m30700throw(toULongArray, "$this$toULongArray");
        long[] jArrM31403for = Ctransient.m31403for(toULongArray.size());
        Iterator<oa2> it = toULongArray.iterator();
        int i = 0;
        while (it.hasNext()) {
            Ctransient.m31411while(jArrM31403for, i, it.next().t());
            i++;
        }
        return jArrM31403for;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfULong")
    /* renamed from: for, reason: not valid java name */
    public static final long m30093for(@m41 Iterable<oa2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<oa2> it = sum.iterator();
        long jM5524goto = 0;
        while (it.hasNext()) {
            jM5524goto = oa2.m5524goto(jM5524goto + it.next().t());
        }
        return jM5524goto;
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: goto, reason: not valid java name */
    public static final short[] m30094goto(@m41 Collection<ab2> toUShortArray) {
        Csuper.m30700throw(toUShortArray, "$this$toUShortArray");
        short[] sArrM30490for = Cinstanceof.m30490for(toUShortArray.size());
        Iterator<ab2> it = toUShortArray.iterator();
        int i = 0;
        while (it.hasNext()) {
            Cinstanceof.m30498while(sArrM30490for, i, it.next().r());
            i++;
        }
        return sArrM30490for;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfUInt")
    /* renamed from: if, reason: not valid java name */
    public static final int m30095if(@m41 Iterable<ja2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<ja2> it = sum.iterator();
        int iM3772goto = 0;
        while (it.hasNext()) {
            iM3772goto = ja2.m3772goto(iM3772goto + it.next().t());
        }
        return iM3772goto;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfUShort")
    /* renamed from: new, reason: not valid java name */
    public static final int m30096new(@m41 Iterable<ab2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<ab2> it = sum.iterator();
        int iM3772goto = 0;
        while (it.hasNext()) {
            iM3772goto = ja2.m3772goto(iM3772goto + ja2.m3772goto(it.next().r() & ab2.f80for));
        }
        return iM3772goto;
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: try, reason: not valid java name */
    public static final byte[] m30097try(@m41 Collection<ea2> toUByteArray) {
        Csuper.m30700throw(toUByteArray, "$this$toUByteArray");
        byte[] bArrM30509for = Cinterface.m30509for(toUByteArray.size());
        Iterator<ea2> it = toUByteArray.iterator();
        int i = 0;
        while (it.hasNext()) {
            Cinterface.m30517while(bArrM30509for, i, it.next().r());
            i++;
        }
        return bArrM30509for;
    }
}
