package kotlin.coroutines;

import android.support.v4.Cstrictfp;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.v60;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010J\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\u0014\u0010\u0007\u001a\u00020\u00062\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016J*\u0010\u000b\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\b*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u000e\u001a\u00020\r2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¨\u0006\u0011"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/CoroutineContext$Element;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "continuation", "interceptContinuation", "Landroid/support/v4/ub2;", "releaseInterceptedContinuation", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "minusKey", "Key", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface ContinuationInterceptor extends CoroutineContext.Element {

    @m41
    public static final Cif Key = Cif.f27790do;

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.ContinuationInterceptor$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static <R> R m30371do(@m41 ContinuationInterceptor continuationInterceptor, R r, @m41 Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Csuper.m30700throw(operation, "operation");
            return (R) CoroutineContext.Element.Cdo.m30376do(continuationInterceptor, r, operation);
        }

        @m41
        /* renamed from: for, reason: not valid java name */
        public static CoroutineContext m30372for(@m41 ContinuationInterceptor continuationInterceptor, @m41 CoroutineContext.Key<?> key) {
            Csuper.m30700throw(key, "key");
            if (!(key instanceof Cstrictfp)) {
                return ContinuationInterceptor.Key == key ? v60.INSTANCE : continuationInterceptor;
            }
            Cstrictfp cstrictfp = (Cstrictfp) key;
            return (!cstrictfp.m7605do(continuationInterceptor.getKey()) || cstrictfp.m7606if(continuationInterceptor) == null) ? continuationInterceptor : v60.INSTANCE;
        }

        @z41
        /* renamed from: if, reason: not valid java name */
        public static <E extends CoroutineContext.Element> E m30373if(@m41 ContinuationInterceptor continuationInterceptor, @m41 CoroutineContext.Key<E> key) {
            Csuper.m30700throw(key, "key");
            if (!(key instanceof Cstrictfp)) {
                if (ContinuationInterceptor.Key != key) {
                    return null;
                }
                Objects.requireNonNull(continuationInterceptor, "null cannot be cast to non-null type E");
                return continuationInterceptor;
            }
            Cstrictfp cstrictfp = (Cstrictfp) key;
            if (!cstrictfp.m7605do(continuationInterceptor.getKey())) {
                return null;
            }
            E e = (E) cstrictfp.m7606if(continuationInterceptor);
            if (e instanceof CoroutineContext.Element) {
                return e;
            }
            return null;
        }

        @m41
        /* renamed from: new, reason: not valid java name */
        public static CoroutineContext m30374new(@m41 ContinuationInterceptor continuationInterceptor, @m41 CoroutineContext context) {
            Csuper.m30700throw(context, "context");
            return CoroutineContext.Element.Cdo.m30379new(continuationInterceptor, context);
        }

        /* renamed from: try, reason: not valid java name */
        public static void m30375try(@m41 ContinuationInterceptor continuationInterceptor, @m41 Continuation<?> continuation) {
            Csuper.m30700throw(continuation, "continuation");
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/coroutines/ContinuationInterceptor$if", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlin/coroutines/ContinuationInterceptor;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.ContinuationInterceptor$if, reason: invalid class name */
    public static final class Cif implements CoroutineContext.Key<ContinuationInterceptor> {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ Cif f27790do = new Cif();

        private Cif() {
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @z41
    <E extends CoroutineContext.Element> E get(@m41 CoroutineContext.Key<E> key);

    @m41
    <T> Continuation<T> interceptContinuation(@m41 Continuation<? super T> continuation);

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m41
    CoroutineContext minusKey(@m41 CoroutineContext.Key<?> key);

    void releaseInterceptedContinuation(@m41 Continuation<?> continuation);
}
