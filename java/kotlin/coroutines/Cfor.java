package kotlin.coroutines;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.vn1;
import android.support.v4.wg1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Cwhile;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Csuper;

@wg1
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b\u0001\u0018\u0000 \u001e*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003:\u0001\nB!\b\u0000\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001b\u0010\u001cB\u0017\b\u0011\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u001b\u0010\u001dJ \u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000fR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlin/coroutines/for;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", "", "do", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "", "toString", "Ljava/lang/Object;", "if", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "initialResult", "<init>", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "(Lkotlin/coroutines/Continuation;)V", "new", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> implements Continuation<T>, CoroutineStackFrame {

    /* renamed from: do, reason: not valid java name */
    private volatile Object f27793do;

    /* renamed from: if, reason: not valid java name */
    private final Continuation<T> f27794if;

    /* renamed from: new, reason: not valid java name */
    @m41
    private static final Cdo f27792new = new Cdo(null);

    /* renamed from: for, reason: not valid java name */
    @Deprecated
    private static final AtomicReferenceFieldUpdater<Cfor<?>, Object> f27791for = AtomicReferenceFieldUpdater.newUpdater(Cfor.class, Object.class, "do");

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\bRl\u0010\u0005\u001aR\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u00030\u0003\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001 \u0004*(\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u00030\u0003\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"kotlin/coroutines/for$do", "", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlin/coroutines/for;", "kotlin.jvm.PlatformType", "RESULT", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "getRESULT$annotations", "()V", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.for$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        private static /* synthetic */ void m30385do() {
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cfor(@m41 Continuation<? super T> delegate, @z41 Object obj) {
        Csuper.m30700throw(delegate, "delegate");
        this.f27794if = delegate;
        this.f27793do = obj;
    }

    @wg1
    @z41
    /* renamed from: do, reason: not valid java name */
    public final Object m30384do() throws Throwable {
        Object obj = this.f27793do;
        kotlin.coroutines.intrinsics.Cdo cdo = kotlin.coroutines.intrinsics.Cdo.UNDECIDED;
        if (obj == cdo) {
            if (f27791for.compareAndSet(this, cdo, Cnew.m30408goto())) {
                return Cnew.m30408goto();
            }
            obj = this.f27793do;
        }
        if (obj == kotlin.coroutines.intrinsics.Cdo.RESUMED) {
            return Cnew.m30408goto();
        }
        if (obj instanceof vn1.Cif) {
            throw ((vn1.Cif) obj).exception;
        }
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @z41
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f27794if;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        return this.f27794if.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @z41
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m41 Object obj) {
        while (true) {
            Object obj2 = this.f27793do;
            kotlin.coroutines.intrinsics.Cdo cdo = kotlin.coroutines.intrinsics.Cdo.UNDECIDED;
            if (obj2 == cdo) {
                if (f27791for.compareAndSet(this, cdo, obj)) {
                    return;
                }
            } else {
                if (obj2 != Cnew.m30408goto()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (f27791for.compareAndSet(this, Cnew.m30408goto(), kotlin.coroutines.intrinsics.Cdo.RESUMED)) {
                    this.f27794if.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @m41
    public String toString() {
        return "SafeContinuation for " + this.f27794if;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @wg1
    public Cfor(@m41 Continuation<? super T> delegate) {
        this(delegate, kotlin.coroutines.intrinsics.Cdo.UNDECIDED);
        Csuper.m30700throw(delegate, "delegate");
    }
}
