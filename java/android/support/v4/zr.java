package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0018\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0007¨\u0006\b"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "do", "(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "if", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class zr {
    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.3")
    @z41
    @Cthis
    /* renamed from: do, reason: not valid java name */
    public static final <E extends CoroutineContext.Element> E m10265do(@m41 CoroutineContext.Element getPolymorphicElement, @m41 CoroutineContext.Key<E> key) {
        Csuper.m30700throw(getPolymorphicElement, "$this$getPolymorphicElement");
        Csuper.m30700throw(key, "key");
        if (!(key instanceof Cstrictfp)) {
            if (getPolymorphicElement.getKey() == key) {
                return getPolymorphicElement;
            }
            return null;
        }
        Cstrictfp cstrictfp = (Cstrictfp) key;
        if (!cstrictfp.m7605do(getPolymorphicElement.getKey())) {
            return null;
        }
        E e = (E) cstrictfp.m7606if(getPolymorphicElement);
        if (e instanceof CoroutineContext.Element) {
            return e;
        }
        return null;
    }

    @m41
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: if, reason: not valid java name */
    public static final CoroutineContext m10266if(@m41 CoroutineContext.Element minusPolymorphicKey, @m41 CoroutineContext.Key<?> key) {
        Csuper.m30700throw(minusPolymorphicKey, "$this$minusPolymorphicKey");
        Csuper.m30700throw(key, "key");
        if (!(key instanceof Cstrictfp)) {
            return minusPolymorphicKey.getKey() == key ? v60.INSTANCE : minusPolymorphicKey;
        }
        Cstrictfp cstrictfp = (Cstrictfp) key;
        return (!cstrictfp.m7605do(minusPolymorphicKey.getKey()) || cstrictfp.m7606if(minusPolymorphicKey) == null) ? minusPolymorphicKey : v60.INSTANCE;
    }
}
