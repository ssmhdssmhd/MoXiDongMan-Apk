package android.support.v4;

import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.internal.Cdo;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Landroid/support/v4/ho0;", "Lkotlin/internal/do;", "", "cause", "exception", "Landroid/support/v4/ub2;", "do", "", "new", "<init>", "()V", "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class ho0 extends Cdo {
    @Override // kotlin.internal.Cdo
    /* renamed from: do, reason: not valid java name */
    public void mo3074do(@m41 Throwable cause, @m41 Throwable exception) {
        Csuper.m30700throw(cause, "cause");
        Csuper.m30700throw(exception, "exception");
        cause.addSuppressed(exception);
    }

    @Override // kotlin.internal.Cdo
    @m41
    /* renamed from: new, reason: not valid java name */
    public List<Throwable> mo3075new(@m41 Throwable exception) {
        Csuper.m30700throw(exception, "exception");
        Throwable[] suppressed = exception.getSuppressed();
        Csuper.m30696super(suppressed, "exception.suppressed");
        return Ccatch.m29987public(suppressed);
    }
}
