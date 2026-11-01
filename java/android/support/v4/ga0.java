package android.support.v4;

import java.util.Random;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Landroid/support/v4/ga0;", "Lkotlin/random/do;", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ga0 extends kotlin.random.Cdo {

    /* renamed from: if, reason: not valid java name */
    private final Cdo f2086if = new Cdo();

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0014¨\u0006\u0004"}, d2 = {"android/support/v4/ga0$do", "Ljava/lang/ThreadLocal;", "Ljava/util/Random;", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.ga0$do, reason: invalid class name */
    public static final class Cdo extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        @m41
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // kotlin.random.Cdo
    @m41
    public Random getImpl() {
        Random random = this.f2086if.get();
        Csuper.m30696super(random, "implStorage.get()");
        return random;
    }
}
