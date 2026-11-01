package android.support.v4;

import java.util.concurrent.CancellationException;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a!\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0087\b\u001a\u0017\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0087\b*\u001a\b\u0007\u0010\u000b\"\u00020\u00042\u00020\u0004B\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n¨\u0006\f"}, d2 = {"", "message", "", "cause", "Ljava/util/concurrent/CancellationException;", "Lkotlin/coroutines/cancellation/CancellationException;", "do", "if", "Landroid/support/v4/iz1;", freemarker.core.k.f23925continue, "1.4", "CancellationException", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class of {
    @iz1(version = "1.4")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final CancellationException m5616do(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    @iz1(version = "1.4")
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ void m5617for() {
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final CancellationException m5618if(Throwable th) {
        CancellationException cancellationException = new CancellationException(th != null ? th.toString() : null);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
