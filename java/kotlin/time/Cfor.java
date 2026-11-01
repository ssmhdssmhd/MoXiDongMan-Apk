package kotlin.time;

import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.rx;
import kotlin.Cwhile;

@l90
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0003\u0018\u00002\u00020\u0001B\u001a\u0012\u0006\u0010\u000b\u001a\u00020\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0003\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u001f\u0010\u000f\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0012"}, d2 = {"Lkotlin/time/for;", "Lkotlin/time/catch;", "Lkotlin/time/new;", "do", "()J", "duration", "try", "(J)Lkotlin/time/catch;", "Lkotlin/time/catch;", "else", "()Lkotlin/time/catch;", "mark", "if", "J", "case", "adjustment", "<init>", "(Lkotlin/time/catch;JLandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.time.for, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfor extends Ccatch {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Ccatch f28059do;

    /* renamed from: if, reason: not valid java name */
    private final long f28060if;

    private Cfor(Ccatch ccatch, long j) {
        this.f28059do = ccatch;
        this.f28060if = j;
    }

    /* renamed from: case, reason: not valid java name */
    public final long m31281case() {
        return this.f28060if;
    }

    @Override // kotlin.time.Ccatch
    /* renamed from: do */
    public long mo31270do() {
        return Cnew.w(this.f28059do.mo31270do(), this.f28060if);
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public final Ccatch m31282else() {
        return this.f28059do;
    }

    @Override // kotlin.time.Ccatch
    @m41
    /* renamed from: try */
    public Ccatch mo31274try(long j) {
        return new Cfor(this.f28059do, Cnew.x(this.f28060if, j));
    }

    public /* synthetic */ Cfor(Ccatch ccatch, long j, rx rxVar) {
        this(ccatch, j);
    }
}
