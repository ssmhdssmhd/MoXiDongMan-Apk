package android.support.v4;

import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.time.Ccatch;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001f\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"Lkotlin/time/catch;", "other", "Lkotlin/time/new;", "if", "(Lkotlin/time/catch;Lkotlin/time/catch;)J", "", "do", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class x62 {
    @l90
    @um0
    @Cfor(level = Ctry.ERROR, message = "Comparing one TimeMark to another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    private static final int m9397do(Ccatch compareTo, Ccatch ccatch) {
        Csuper.m30700throw(compareTo, "$this$compareTo");
        throw new Error("Operation is disallowed.");
    }

    @l90
    @um0
    @Cfor(level = Ctry.ERROR, message = "Subtracting one TimeMark from another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    private static final long m9398if(Ccatch minus, Ccatch ccatch) {
        Csuper.m30700throw(minus, "$this$minus");
        throw new Error("Operation is disallowed.");
    }
}
