package kotlin.random;

import android.support.v4.m41;
import android.support.v4.rx;
import java.io.Serializable;
import java.util.Random;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000 \u000b2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\fB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/random/for;", "Lkotlin/random/do;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/Random;", "impl", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "<init>", "(Ljava/util/Random;)V", "if", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.random.for, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfor extends kotlin.random.Cdo implements Serializable {

    /* renamed from: if, reason: not valid java name */
    @m41
    private static final Cdo f27922if = new Cdo(null);

    @Deprecated
    private static final long serialVersionUID = 0;

    @m41
    private final Random impl;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"kotlin/random/for$do", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.random.for$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public Cfor(@m41 Random impl) {
        Csuper.m30700throw(impl, "impl");
        this.impl = impl;
    }

    @Override // kotlin.random.Cdo
    @m41
    public Random getImpl() {
        return this.impl;
    }
}
