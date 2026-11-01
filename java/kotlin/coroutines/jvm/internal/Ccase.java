package kotlin.coroutines.jvm.internal;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.ub2;
import kotlin.Cwhile;
import kotlin.coroutines.Cif;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a0\u0010\u0005\u001a\u00020\u00022\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/ub2;", "", "block", "do", "(Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.jvm.internal.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase {
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    public static final void m30410do(@m41 Function1<? super Continuation<? super ub2>, ? extends Object> block) {
        Csuper.m30700throw(block, "block");
        Ctry ctry = new Ctry();
        Cif.m30391goto(block, ctry);
        ctry.m30418do();
    }
}
