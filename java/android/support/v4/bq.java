package android.support.v4;

import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\"\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Landroid/support/v4/bq;", "Lkotlin/coroutines/Continuation;", "", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", com.umeng.analytics.pro.d.R, "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class bq implements Continuation<Object> {

    /* renamed from: do, reason: not valid java name */
    @m41
    public static final bq f506do = new bq();

    private bq() {
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m41 Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @m41
    public String toString() {
        return "This continuation is already complete";
    }
}
