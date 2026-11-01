package kotlin.random;

import android.support.v4.ae1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import java.util.Random;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u001a\f\u0010\u0003\u001a\u00020\u0000*\u00020\u0001H\u0007\u001a\t\u0010\u0004\u001a\u00020\u0000H\u0081\b\u001a\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0000¨\u0006\n"}, d2 = {"Lkotlin/random/try;", "Ljava/util/Random;", "do", "if", "for", "", "hi26", "low27", "", "new", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.random.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {
    @m41
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    public static final Random m30855do(@m41 Ctry asJavaRandom) {
        Random impl;
        Csuper.m30700throw(asJavaRandom, "$this$asJavaRandom");
        Cdo cdo = (Cdo) (!(asJavaRandom instanceof Cdo) ? null : asJavaRandom);
        return (cdo == null || (impl = cdo.getImpl()) == null) ? new Cif(asJavaRandom) : impl;
    }

    @um0
    /* renamed from: for, reason: not valid java name */
    private static final Ctry m30856for() {
        return ae1.f113do.mo3524if();
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static final Ctry m30857if(@m41 Random asKotlinRandom) {
        Ctry impl;
        Csuper.m30700throw(asKotlinRandom, "$this$asKotlinRandom");
        Cif cif = (Cif) (!(asKotlinRandom instanceof Cif) ? null : asKotlinRandom);
        return (cif == null || (impl = cif.getImpl()) == null) ? new Cfor(asKotlinRandom) : impl;
    }

    /* renamed from: new, reason: not valid java name */
    public static final double m30858new(int i, int i2) {
        double d = (i << 27) + i2;
        double d2 = 9007199254740992L;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }
}
