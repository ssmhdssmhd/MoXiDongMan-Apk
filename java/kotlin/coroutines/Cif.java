package kotlin.coroutines;

import android.support.v4.gx;
import android.support.v4.iz1;
import android.support.v4.k41;
import android.support.v4.m41;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.vn1;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.intrinsics.Cfor;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a(\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a!\u0010\b\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0087\b\u001a?\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\n\u001a\u00020\t2\u001a\b\u0004\u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0004\u0012\u00020\u00030\u000bH\u0087\bø\u0001\u0000ø\u0001\u0001\u001aF\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a_\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0014¢\u0006\u0002\b\u00152\u0006\u0010\u0016\u001a\u00028\u00002\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a@\u0010\u0019\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aY\u0010\u001b\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0014¢\u0006\u0002\b\u00152\u0006\u0010\u0016\u001a\u00028\u00002\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001aB\u0010\u001e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\u0004\u0012\u00020\u00030\u000bH\u0087Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u001e\u0010\u001f\"\u001d\u0010$\u001a\u00020\t8Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "case", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "", "exception", "else", "Lkotlin/coroutines/CoroutineContext;", d.R, "Lkotlin/Function1;", "Landroid/support/v4/vn1;", "resumeWith", "do", "", "completion", "if", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Landroid/support/v4/w90;", "receiver", "for", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "goto", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "this", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "block", "break", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "new", "()Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext$annotations", "()V", "coroutineContext", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J \u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"kotlin/coroutines/if$do", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/vn1;", "result", "Landroid/support/v4/ub2;", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.if$do, reason: invalid class name */
    public static final class Cdo<T> implements Continuation<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CoroutineContext f27795do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function1 f27796if;

        public Cdo(CoroutineContext coroutineContext, Function1 function1) {
            this.f27795do = coroutineContext;
            this.f27796if = function1;
        }

        @Override // kotlin.coroutines.Continuation
        @m41
        public CoroutineContext getContext() {
            return this.f27795do;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@m41 Object obj) {
            this.f27796if.invoke(vn1.a(obj));
        }
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: break, reason: not valid java name */
    private static final <T> Object m30386break(Function1<? super Continuation<? super T>, ub2> function1, Continuation<? super T> continuation) throws Throwable {
        tm0.m7997try(0);
        Cfor cfor = new Cfor(Cfor.m30401new(continuation));
        function1.invoke(cfor);
        Object objM30384do = cfor.m30384do();
        if (objM30384do == Cnew.m30408goto()) {
            gx.m2819for(continuation);
        }
        tm0.m7997try(1);
        return objM30384do;
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final <T> void m30387case(Continuation<? super T> continuation, T t) {
        vn1.Cdo cdo = vn1.Companion;
        continuation.resumeWith(vn1.b(t));
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final <T> Continuation<T> m30388do(CoroutineContext coroutineContext, Function1<? super vn1<? extends T>, ub2> function1) {
        return new Cdo(coroutineContext, function1);
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: else, reason: not valid java name */
    private static final <T> void m30389else(Continuation<? super T> continuation, Throwable th) {
        vn1.Cdo cdo = vn1.Companion;
        continuation.resumeWith(vn1.b(Cpackage.m30781do(th)));
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: for, reason: not valid java name */
    public static final <R, T> Continuation<ub2> m30390for(@m41 Function2<? super R, ? super Continuation<? super T>, ? extends Object> createCoroutine, R r, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(createCoroutine, "$this$createCoroutine");
        Csuper.m30700throw(completion, "completion");
        return new Cfor(Cfor.m30401new(Cfor.m30399for(createCoroutine, r, completion)), Cnew.m30408goto());
    }

    @iz1(version = "1.3")
    /* renamed from: goto, reason: not valid java name */
    public static final <T> void m30391goto(@m41 Function1<? super Continuation<? super T>, ? extends Object> startCoroutine, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(startCoroutine, "$this$startCoroutine");
        Csuper.m30700throw(completion, "completion");
        Continuation continuationM30401new = Cfor.m30401new(Cfor.m30400if(startCoroutine, completion));
        ub2 ub2Var = ub2.f6820do;
        vn1.Cdo cdo = vn1.Companion;
        continuationM30401new.resumeWith(vn1.b(ub2Var));
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static final <T> Continuation<ub2> m30392if(@m41 Function1<? super Continuation<? super T>, ? extends Object> createCoroutine, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(createCoroutine, "$this$createCoroutine");
        Csuper.m30700throw(completion, "completion");
        return new Cfor(Cfor.m30401new(Cfor.m30400if(createCoroutine, completion)), Cnew.m30408goto());
    }

    /* renamed from: new, reason: not valid java name */
    private static final CoroutineContext m30393new() {
        throw new k41("Implemented as intrinsic");
    }

    @iz1(version = "1.3")
    /* renamed from: this, reason: not valid java name */
    public static final <R, T> void m30394this(@m41 Function2<? super R, ? super Continuation<? super T>, ? extends Object> startCoroutine, R r, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(startCoroutine, "$this$startCoroutine");
        Csuper.m30700throw(completion, "completion");
        Continuation continuationM30401new = Cfor.m30401new(Cfor.m30399for(startCoroutine, r, completion));
        ub2 ub2Var = ub2.f6820do;
        vn1.Cdo cdo = vn1.Companion;
        continuationM30401new.resumeWith(vn1.b(ub2Var));
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ void m30395try() {
    }
}
