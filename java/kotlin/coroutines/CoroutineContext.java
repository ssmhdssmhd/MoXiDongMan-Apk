package kotlin.coroutines;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.v60;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import kotlin.Cwhile;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\bg\u0018\u00002\u00020\u0001:\u0002\u0011\u0012J*\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H¦\u0002¢\u0006\u0004\b\u0006\u0010\u0007J7\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00028\u00002\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u00000\nH&¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002J\u0014\u0010\u0010\u001a\u00020\u00002\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004H&¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "Lkotlin/coroutines/CoroutineContext$Element;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", d.R, "plus", "minusKey", "Element", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface CoroutineContext {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J*\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0002*\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u00028\u00002\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00028\u00000\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\r\u001a\u00020\u00012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u001a\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "minusKey", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface Element extends CoroutineContext {

        @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
        /* renamed from: kotlin.coroutines.CoroutineContext$Element$do, reason: invalid class name */
        public static final class Cdo {
            /* renamed from: do, reason: not valid java name */
            public static <R> R m30376do(@m41 Element element, R r, @m41 Function2<? super R, ? super Element, ? extends R> operation) {
                Csuper.m30700throw(operation, "operation");
                return operation.invoke(r, element);
            }

            @m41
            /* renamed from: for, reason: not valid java name */
            public static CoroutineContext m30377for(@m41 Element element, @m41 Key<?> key) {
                Csuper.m30700throw(key, "key");
                return Csuper.m30676else(element.getKey(), key) ? v60.INSTANCE : element;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @z41
            /* renamed from: if, reason: not valid java name */
            public static <E extends Element> E m30378if(@m41 Element element, @m41 Key<E> key) {
                Csuper.m30700throw(key, "key");
                if (Csuper.m30676else(element.getKey(), key)) {
                    return element;
                }
                return null;
            }

            @m41
            /* renamed from: new, reason: not valid java name */
            public static CoroutineContext m30379new(@m41 Element element, @m41 CoroutineContext context) {
                Csuper.m30700throw(context, "context");
                return Cdo.m30380do(element, context);
            }
        }

        @Override // kotlin.coroutines.CoroutineContext
        <R> R fold(R r, @m41 Function2<? super R, ? super Element, ? extends R> function2);

        @Override // kotlin.coroutines.CoroutineContext
        @z41
        <E extends Element> E get(@m41 Key<E> key);

        @m41
        Key<?> getKey();

        @Override // kotlin.coroutines.CoroutineContext
        @m41
        CoroutineContext minusKey(@m41 Key<?> key);
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlin/coroutines/CoroutineContext$Element;", ExifInterface.LONGITUDE_EAST, "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface Key<E extends Element> {
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.CoroutineContext$do, reason: invalid class name */
    public static final class Cdo {

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "acc", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "invoke", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: kotlin.coroutines.CoroutineContext$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0362do extends yr0 implements Function2<CoroutineContext, Element, CoroutineContext> {
            public static final C0362do INSTANCE = new C0362do();

            public C0362do() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @m41
            public final CoroutineContext invoke(@m41 CoroutineContext acc, @m41 Element element) {
                kotlin.coroutines.Cdo cdo;
                Csuper.m30700throw(acc, "acc");
                Csuper.m30700throw(element, "element");
                CoroutineContext coroutineContextMinusKey = acc.minusKey(element.getKey());
                v60 v60Var = v60.INSTANCE;
                if (coroutineContextMinusKey == v60Var) {
                    return element;
                }
                ContinuationInterceptor.Cif cif = ContinuationInterceptor.Key;
                ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(cif);
                if (continuationInterceptor == null) {
                    cdo = new kotlin.coroutines.Cdo(coroutineContextMinusKey, element);
                } else {
                    CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(cif);
                    if (coroutineContextMinusKey2 == v60Var) {
                        return new kotlin.coroutines.Cdo(element, continuationInterceptor);
                    }
                    cdo = new kotlin.coroutines.Cdo(new kotlin.coroutines.Cdo(coroutineContextMinusKey2, element), continuationInterceptor);
                }
                return cdo;
            }
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public static CoroutineContext m30380do(@m41 CoroutineContext coroutineContext, @m41 CoroutineContext context) {
            Csuper.m30700throw(context, "context");
            return context == v60.INSTANCE ? coroutineContext : (CoroutineContext) context.fold(coroutineContext, C0362do.INSTANCE);
        }
    }

    <R> R fold(R r, @m41 Function2<? super R, ? super Element, ? extends R> function2);

    @z41
    <E extends Element> E get(@m41 Key<E> key);

    @m41
    CoroutineContext minusKey(@m41 Key<?> key);

    @m41
    CoroutineContext plus(@m41 CoroutineContext coroutineContext);
}
