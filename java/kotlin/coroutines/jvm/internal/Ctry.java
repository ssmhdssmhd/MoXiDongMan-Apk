package kotlin.coroutines.jvm.internal;

import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.v60;
import android.support.v4.vn1;
import android.support.v4.z41;
import com.umeng.analytics.pro.d;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0005\u001a\u00020\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0002R\u0016\u0010\u000b\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR0\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/jvm/internal/try;", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/ub2;", "Landroid/support/v4/vn1;", "result", "resumeWith", "(Ljava/lang/Object;)V", "do", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "Landroid/support/v4/vn1;", "if", "()Landroid/support/v4/vn1;", "for", "(Landroid/support/v4/vn1;)V", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.jvm.internal.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry implements Continuation<ub2> {

    /* renamed from: do, reason: not valid java name */
    @z41
    private vn1<ub2> f27805do;

    /* renamed from: do, reason: not valid java name */
    public final void m30418do() {
        synchronized (this) {
            while (true) {
                vn1<ub2> vn1Var = this.f27805do;
                if (vn1Var == null) {
                    wait();
                } else {
                    Cpackage.m30783final(vn1Var.j());
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m30419for(@z41 vn1<ub2> vn1Var) {
        this.f27805do = vn1Var;
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        return v60.INSTANCE;
    }

    @z41
    /* renamed from: if, reason: not valid java name */
    public final vn1<ub2> m30420if() {
        return this.f27805do;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m41 Object obj) {
        synchronized (this) {
            this.f27805do = vn1.a(obj);
            notifyAll();
            ub2 ub2Var = ub2.f6820do;
        }
    }
}
