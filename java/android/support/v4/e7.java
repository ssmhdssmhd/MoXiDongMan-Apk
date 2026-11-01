package android.support.v4;

import android.support.v4.vn1;
import java.io.Serializable;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.coroutines.jvm.internal.Cfor;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b!\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0019\u0012\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ \u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ$\u0010\n\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005H$ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\u0007H\u0014J\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00012\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J$\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R#\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Landroid/support/v4/e7;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/io/Serializable;", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "completion", "create", ES6Iterator.VALUE_PROPERTY, "", "toString", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/Continuation;", "getCompletion", "()Lkotlin/coroutines/Continuation;", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class e7 implements Continuation<Object>, CoroutineStackFrame, Serializable {

    @z41
    private final Continuation<Object> completion;

    public e7(@z41 Continuation<Object> continuation) {
        this.completion = continuation;
    }

    @m41
    public Continuation<ub2> create(@m41 Continuation<?> completion) {
        Csuper.m30700throw(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @z41
    public CoroutineStackFrame getCallerFrame() {
        Continuation<Object> continuation = this.completion;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @z41
    public final Continuation<Object> getCompletion() {
        return this.completion;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @z41
    public StackTraceElement getStackTraceElement() {
        return Cfor.m30415try(this);
    }

    @z41
    public abstract Object invokeSuspend(@m41 Object obj);

    public void releaseIntercepted() {
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@m41 Object obj) {
        Object objInvokeSuspend;
        e7 e7Var = this;
        while (true) {
            gx.m2820if(e7Var);
            Continuation<Object> continuation = e7Var.completion;
            Csuper.m30672const(continuation);
            try {
                objInvokeSuspend = e7Var.invokeSuspend(obj);
            } catch (Throwable th) {
                vn1.Cdo cdo = vn1.Companion;
                obj = vn1.b(Cpackage.m30781do(th));
            }
            if (objInvokeSuspend == Cnew.m30408goto()) {
                return;
            }
            vn1.Cdo cdo2 = vn1.Companion;
            obj = vn1.b(objInvokeSuspend);
            e7Var.releaseIntercepted();
            if (!(continuation instanceof e7)) {
                continuation.resumeWith(obj);
                return;
            }
            e7Var = (e7) continuation;
        }
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    @m41
    public Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
        Csuper.m30700throw(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
