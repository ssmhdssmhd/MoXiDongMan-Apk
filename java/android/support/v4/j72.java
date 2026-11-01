package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;

@wp0(name = "TimingKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a'\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a'\u0010\u0005\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0006"}, d2 = {"Lkotlin/Function0;", "Landroid/support/v4/ub2;", "block", "", "if", "do", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class j72 {
    /* renamed from: do, reason: not valid java name */
    public static final long m3740do(@m41 Function0<ub2> block) {
        Csuper.m30700throw(block, "block");
        long jNanoTime = System.nanoTime();
        block.invoke();
        return System.nanoTime() - jNanoTime;
    }

    /* renamed from: if, reason: not valid java name */
    public static final long m3741if(@m41 Function0<ub2> block) {
        Csuper.m30700throw(block, "block");
        long jCurrentTimeMillis = System.currentTimeMillis();
        block.invoke();
        return System.currentTimeMillis() - jCurrentTimeMillis;
    }
}
