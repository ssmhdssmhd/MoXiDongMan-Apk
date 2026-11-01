package android.support.v4;

import java.util.NoSuchElementException;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0019\u0010\u0006\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Landroid/support/v4/aw0;", "Landroid/support/v4/yv0;", "", "hasNext", "", "if", "step", "J", "for", "()J", "first", "last", "<init>", "(JJJ)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class aw0 extends yv0 {

    /* renamed from: do, reason: not valid java name */
    private final long f267do;

    /* renamed from: for, reason: not valid java name */
    private long f268for;

    /* renamed from: if, reason: not valid java name */
    private boolean f269if;

    /* renamed from: new, reason: not valid java name */
    private final long f270new;

    public aw0(long j, long j2, long j3) {
        this.f270new = j3;
        this.f267do = j2;
        boolean z = true;
        if (j3 <= 0 ? j < j2 : j > j2) {
            z = false;
        }
        this.f269if = z;
        this.f268for = z ? j : j2;
    }

    /* renamed from: for, reason: not valid java name */
    public final long m371for() {
        return this.f270new;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f269if;
    }

    @Override // android.support.v4.yv0
    /* renamed from: if, reason: not valid java name */
    public long mo372if() {
        long j = this.f268for;
        if (j != this.f267do) {
            this.f268for = this.f270new + j;
        } else {
            if (!this.f269if) {
                throw new NoSuchElementException();
            }
            this.f269if = false;
        }
        return j;
    }
}
