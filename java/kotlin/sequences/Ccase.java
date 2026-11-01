package kotlin.sequences;

import android.support.v4.gx;
import android.support.v4.m41;
import android.support.v4.rw1;
import android.support.v4.ub2;
import android.support.v4.v60;
import android.support.v4.vn1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0007¢\u0006\u0004\b+\u0010,J\u000f\u0010\u0006\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\bH\u0002J\t\u0010\u000b\u001a\u00020\nH\u0096\u0002J\u0010\u0010\f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\f\u0010\u0007J\u001b\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0015\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\u00060\u0017j\u0002`\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001eR*\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Lkotlin/sequences/case;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/rw1;", "", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/ub2;", "else", "()Ljava/lang/Object;", "", "try", "", "hasNext", ES6Iterator.NEXT_METHOD, ES6Iterator.VALUE_PROPERTY, "do", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "iterator", "for", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/support/v4/vn1;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", "Lkotlin/sequences/State;", OptRuntime.GeneratorState.resumptionPoint_TYPE, "state", "if", "Ljava/lang/Object;", "nextValue", "Ljava/util/Iterator;", "nextIterator", "new", "Lkotlin/coroutines/Continuation;", "case", "()Lkotlin/coroutines/Continuation;", "goto", "(Lkotlin/coroutines/Continuation;)V", "nextStep", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase<T> extends rw1<T> implements Iterator<T>, Continuation<ub2>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    private int f27962do;

    /* renamed from: for, reason: not valid java name */
    private Iterator<? extends T> f27963for;

    /* renamed from: if, reason: not valid java name */
    private T f27964if;

    /* renamed from: new, reason: not valid java name */
    @z41
    private Continuation<? super ub2> f27965new;

    /* renamed from: else, reason: not valid java name */
    private final T m31031else() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    /* renamed from: try, reason: not valid java name */
    private final Throwable m31032try() {
        int i = this.f27962do;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f27962do);
    }

    @z41
    /* renamed from: case, reason: not valid java name */
    public final Continuation<ub2> m31033case() {
        return this.f27965new;
    }

    @Override // android.support.v4.rw1
    @z41
    /* renamed from: do */
    public Object mo7186do(T t, @m41 Continuation<? super ub2> continuation) {
        this.f27964if = t;
        this.f27962do = 3;
        this.f27965new = continuation;
        Object objM30408goto = Cnew.m30408goto();
        if (objM30408goto == Cnew.m30408goto()) {
            gx.m2819for(continuation);
        }
        return objM30408goto == Cnew.m30408goto() ? objM30408goto : ub2.f6820do;
    }

    @Override // android.support.v4.rw1
    @z41
    /* renamed from: for */
    public Object mo7187for(@m41 Iterator<? extends T> it, @m41 Continuation<? super ub2> continuation) {
        if (!it.hasNext()) {
            return ub2.f6820do;
        }
        this.f27963for = it;
        this.f27962do = 2;
        this.f27965new = continuation;
        Object objM30408goto = Cnew.m30408goto();
        if (objM30408goto == Cnew.m30408goto()) {
            gx.m2819for(continuation);
        }
        return objM30408goto == Cnew.m30408goto() ? objM30408goto : ub2.f6820do;
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        return v60.INSTANCE;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m31034goto(@z41 Continuation<? super ub2> continuation) {
        this.f27965new = continuation;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i = this.f27962do;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw m31032try();
                }
                Iterator<? extends T> it = this.f27963for;
                Csuper.m30672const(it);
                if (it.hasNext()) {
                    this.f27962do = 2;
                    return true;
                }
                this.f27963for = null;
            }
            this.f27962do = 5;
            Continuation<? super ub2> continuation = this.f27965new;
            Csuper.m30672const(continuation);
            this.f27965new = null;
            ub2 ub2Var = ub2.f6820do;
            vn1.Cdo cdo = vn1.Companion;
            continuation.resumeWith(vn1.b(ub2Var));
        }
    }

    @Override // java.util.Iterator
    public T next() throws Throwable {
        int i = this.f27962do;
        if (i == 0 || i == 1) {
            return m31031else();
        }
        if (i == 2) {
            this.f27962do = 1;
            Iterator<? extends T> it = this.f27963for;
            Csuper.m30672const(it);
            return it.next();
        }
        if (i != 3) {
            throw m31032try();
        }
        this.f27962do = 0;
        T t = this.f27964if;
        this.f27964if = null;
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m41 Object obj) {
        Cpackage.m30783final(obj);
        this.f27962do = 4;
    }
}
