package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.Element;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00028\u00002\b\u0012\u0004\u0012\u00028\u00010\u0004B:\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012#\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0005\u0012\u0006\u0012\u0004\u0018\u00018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0006\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u00020\t2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0000¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Landroid/support/v4/strictfp;", "Lkotlin/coroutines/CoroutineContext$Element;", "B", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "element", "if", "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;", "key", "", "do", "(Lkotlin/coroutines/CoroutineContext$Key;)Z", "baseKey", "Lkotlin/Function1;", "Landroid/support/v4/xb1;", "name", "safeCast", "<init>", "(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: android.support.v4.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cstrictfp<B extends CoroutineContext.Element, E extends B> implements CoroutineContext.Key<E> {

    /* renamed from: do, reason: not valid java name */
    private final CoroutineContext.Key<?> f6266do;

    /* renamed from: if, reason: not valid java name */
    private final Function1<CoroutineContext.Element, E> f6267if;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.CoroutineContext$Key<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.functions.Function1<? super kotlin.coroutines.CoroutineContext$Element, ? extends E extends B>, kotlin.jvm.functions.Function1<kotlin.coroutines.CoroutineContext$Element, E extends B>] */
    public Cstrictfp(@m41 CoroutineContext.Key<B> baseKey, @m41 Function1<? super CoroutineContext.Element, ? extends E> safeCast) {
        Csuper.m30700throw(baseKey, "baseKey");
        Csuper.m30700throw(safeCast, "safeCast");
        this.f6267if = safeCast;
        this.f6266do = baseKey instanceof Cstrictfp ? (CoroutineContext.Key<B>) ((Cstrictfp) baseKey).f6266do : baseKey;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7605do(@m41 CoroutineContext.Key<?> key) {
        Csuper.m30700throw(key, "key");
        return key == this || this.f6266do == key;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lkotlin/coroutines/CoroutineContext$Element;)TE; */
    @z41
    /* renamed from: if, reason: not valid java name */
    public final CoroutineContext.Element m7606if(@m41 CoroutineContext.Element element) {
        Csuper.m30700throw(element, "element");
        return (CoroutineContext.Element) this.f6267if.invoke(element);
    }
}
