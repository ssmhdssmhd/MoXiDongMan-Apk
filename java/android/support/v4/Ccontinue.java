package android.support.v4;

import kotlin.Cwhile;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0007\u0010\bR \u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroid/support/v4/continue;", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "<init>", "(Lkotlin/coroutines/CoroutineContext$Key;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: android.support.v4.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccontinue implements CoroutineContext.Element {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final CoroutineContext.Key<?> f841do;

    public Ccontinue(@m41 CoroutineContext.Key<?> key) {
        Csuper.m30700throw(key, "key");
        this.f841do = key;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @m41 Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Csuper.m30700throw(operation, "operation");
        return (R) CoroutineContext.Element.Cdo.m30376do(this, r, operation);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @z41
    public <E extends CoroutineContext.Element> E get(@m41 CoroutineContext.Key<E> key) {
        Csuper.m30700throw(key, "key");
        return (E) CoroutineContext.Element.Cdo.m30378if(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @m41
    public CoroutineContext.Key<?> getKey() {
        return this.f841do;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m41
    public CoroutineContext minusKey(@m41 CoroutineContext.Key<?> key) {
        Csuper.m30700throw(key, "key");
        return CoroutineContext.Element.Cdo.m30377for(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m41
    public CoroutineContext plus(@m41 CoroutineContext context) {
        Csuper.m30700throw(context, "context");
        return CoroutineContext.Element.Cdo.m30379new(this, context);
    }
}
