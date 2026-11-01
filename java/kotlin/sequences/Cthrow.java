package kotlin.sequences;

import android.support.v4.ab2;
import android.support.v4.ea2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.wp0;
import java.util.Iterator;
import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00040\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001c\u0010\b\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00070\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0003\u001a\u001c\u0010\n\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\t0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lkotlin/sequences/Sequence;", "Landroid/support/v4/ja2;", "if", "(Lkotlin/sequences/Sequence;)I", "Landroid/support/v4/oa2;", "for", "(Lkotlin/sequences/Sequence;)J", "Landroid/support/v4/ea2;", "do", "Landroid/support/v4/ab2;", "new", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/USequencesKt")
/* renamed from: kotlin.sequences.throw, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthrow {
    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfUByte")
    /* renamed from: do, reason: not valid java name */
    public static final int m31085do(@m41 Sequence<ea2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<ea2> it = sum.iterator();
        int iM3772goto = 0;
        while (it.hasNext()) {
            iM3772goto = ja2.m3772goto(iM3772goto + ja2.m3772goto(it.next().r() & 255));
        }
        return iM3772goto;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfULong")
    /* renamed from: for, reason: not valid java name */
    public static final long m31086for(@m41 Sequence<oa2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<oa2> it = sum.iterator();
        long jM5524goto = 0;
        while (it.hasNext()) {
            jM5524goto = oa2.m5524goto(jM5524goto + it.next().t());
        }
        return jM5524goto;
    }

    @gf2(markerClass = {Cbreak.class})
    @iz1(version = "1.5")
    @wp0(name = "sumOfUInt")
    /* renamed from: if, reason: not valid java name */
    public static final int m31087if(@m41 Sequence<ja2> sum) {
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
    public static final int m31088new(@m41 Sequence<ab2> sum) {
        Csuper.m30700throw(sum, "$this$sum");
        Iterator<ab2> it = sum.iterator();
        int iM3772goto = 0;
        while (it.hasNext()) {
            iM3772goto = ja2.m3772goto(iM3772goto + ja2.m3772goto(it.next().r() & ab2.f80for));
        }
        return iM3772goto;
    }
}
