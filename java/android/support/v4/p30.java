package android.support.v4;

import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final /* synthetic */ class p30 {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int[] f4831do;

    static {
        int[] iArr = new int[TimeUnit.values().length];
        f4831do = iArr;
        iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
        iArr[TimeUnit.MICROSECONDS.ordinal()] = 2;
        iArr[TimeUnit.MILLISECONDS.ordinal()] = 3;
        iArr[TimeUnit.SECONDS.ordinal()] = 4;
        iArr[TimeUnit.MINUTES.ordinal()] = 5;
        iArr[TimeUnit.HOURS.ordinal()] = 6;
        iArr[TimeUnit.DAYS.ordinal()] = 7;
    }
}
