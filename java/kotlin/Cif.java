package kotlin;

import android.support.v4.gx;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.ox;
import android.support.v4.px;
import android.support.v4.v60;
import android.support.v4.vn1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import java.util.Objects;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\b\u0012\u0004\u0012\u00028\u00010\u0004BM\u00129\u0010%\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u0007\u0012\u0006\u0010\u0011\u001a\u00028\u0000ø\u0001\u0000¢\u0006\u0004\b&\u0010'Je\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000429\u0010\b\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u00072\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ \u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u0017\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0014\"\u0004\b\u0003\u0010\u0015*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00162\u0006\u0010\u0011\u001a\u00028\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00028\u0001¢\u0006\u0004\b\u0019\u0010\u001aRL\u0010\u001c\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u00078\u0002@\u0002X\u0082\u000eø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0017\u0010\u001bR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u001dR \u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR$\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\f8\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b \u0010\u001dR\u0016\u0010$\u001a\u00020!8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006("}, d2 = {"Lkotlin/if;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Landroid/support/v4/px;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Function3;", "", "Landroid/support/v4/w90;", "currentFunction", "cont", "break", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", ES6Iterator.VALUE_PROPERTY, "if", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "U", ExifInterface.LATITUDE_SOUTH, "Landroid/support/v4/ox;", "do", "(Landroid/support/v4/ox;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "catch", "()Ljava/lang/Object;", "Lkotlin/jvm/functions/Function3;", "function", "Ljava/lang/Object;", "for", "Lkotlin/coroutines/Continuation;", "new", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "block", "<init>", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif<T, R> extends px<T, R> implements Continuation<R> {

    /* renamed from: do, reason: not valid java name */
    private Function3<? super px<?, ?>, Object, ? super Continuation<Object>, ? extends Object> f27809do;

    /* renamed from: for, reason: not valid java name */
    private Continuation<Object> f27810for;

    /* renamed from: if, reason: not valid java name */
    private Object f27811if;

    /* renamed from: new, reason: not valid java name */
    private Object f27812new;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J \u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b¸\u0006\f"}, d2 = {"kotlin/if$do", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "kotlin-stdlib", "kotlin/coroutines/if$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.if$do, reason: invalid class name */
    public static final class Cdo implements Continuation<Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CoroutineContext f27813do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Function3 f27814for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cif f27815if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Continuation f27816new;

        public Cdo(CoroutineContext coroutineContext, Cif cif, Function3 function3, Continuation continuation) {
            this.f27813do = coroutineContext;
            this.f27815if = cif;
            this.f27814for = function3;
            this.f27816new = continuation;
        }

        @Override // kotlin.coroutines.Continuation
        @m41
        public CoroutineContext getContext() {
            return this.f27813do;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@m41 Object obj) {
            this.f27815if.f27809do = this.f27814for;
            this.f27815if.f27810for = this.f27816new;
            this.f27815if.f27812new = obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Cif(@m41 Function3<? super px<T, R>, ? super T, ? super Continuation<? super R>, ? extends Object> block, T t) {
        super(null);
        Csuper.m30700throw(block, "block");
        this.f27809do = block;
        this.f27811if = t;
        this.f27810for = this;
        this.f27812new = kotlin.Cdo.f27806do;
    }

    /* renamed from: break, reason: not valid java name */
    private final Continuation<Object> m30448break(Function3<? super px<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3, Continuation<Object> continuation) {
        return new Cdo(v60.INSTANCE, this, function3, continuation);
    }

    /* renamed from: catch, reason: not valid java name */
    public final R m30455catch() {
        while (true) {
            R r = (R) this.f27812new;
            Continuation<Object> continuation = this.f27810for;
            if (continuation == null) {
                Cpackage.m30783final(r);
                return r;
            }
            if (vn1.d(kotlin.Cdo.f27806do, r)) {
                try {
                    Function3<? super px<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = this.f27809do;
                    Object obj = this.f27811if;
                    if (function3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    }
                    Object objInvoke = ((Function3) k92.m4335while(function3, 3)).invoke(this, obj, continuation);
                    if (objInvoke != Cnew.m30408goto()) {
                        vn1.Cdo cdo = vn1.Companion;
                        continuation.resumeWith(vn1.b(objInvoke));
                    }
                } catch (Throwable th) {
                    vn1.Cdo cdo2 = vn1.Companion;
                    continuation.resumeWith(vn1.b(Cpackage.m30781do(th)));
                }
            } else {
                this.f27812new = kotlin.Cdo.f27806do;
                continuation.resumeWith(r);
            }
        }
    }

    @Override // android.support.v4.px
    @z41
    /* renamed from: do */
    public <U, S> Object mo6239do(@m41 ox<U, S> oxVar, U u, @m41 Continuation<? super S> continuation) {
        Function3<px<U, S>, U, Continuation<? super S>, Object> function3M5816do = oxVar.m5816do();
        Objects.requireNonNull(function3M5816do, "null cannot be cast to non-null type kotlin.DeepRecursiveFunctionBlock /* = suspend kotlin.DeepRecursiveScope<*, *>.(kotlin.Any?) -> kotlin.Any? */");
        Function3<? super px<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = this.f27809do;
        if (function3M5816do != function3) {
            this.f27809do = function3M5816do;
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.f27810for = m30448break(function3, continuation);
        } else {
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.f27810for = continuation;
        }
        this.f27811if = u;
        Object objM30408goto = Cnew.m30408goto();
        if (objM30408goto == Cnew.m30408goto()) {
            gx.m2819for(continuation);
        }
        return objM30408goto;
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        return v60.INSTANCE;
    }

    @Override // android.support.v4.px
    @z41
    /* renamed from: if */
    public Object mo6241if(T t, @m41 Continuation<? super R> continuation) {
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f27810for = continuation;
        this.f27811if = t;
        Object objM30408goto = Cnew.m30408goto();
        if (objM30408goto == Cnew.m30408goto()) {
            gx.m2819for(continuation);
        }
        return objM30408goto;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m41 Object obj) {
        this.f27810for = null;
        this.f27812new = obj;
    }
}
