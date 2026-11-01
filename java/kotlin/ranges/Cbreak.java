package kotlin.ranges;

import android.support.v4.iz1;
import android.support.v4.oa2;
import android.support.v4.oc2;
import android.support.v4.qa2;
import android.support.v4.rx;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0011ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\nR\u001c\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u001c\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\r\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"Lkotlin/ranges/break;", "Landroid/support/v4/qa2;", "", "hasNext", "Landroid/support/v4/oa2;", "if", "()J", "do", "J", "finalElement", "Z", "for", "step", "new", ES6Iterator.NEXT_METHOD, "first", "last", "", "<init>", "(JJJLandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.break, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cbreak extends qa2 {

    /* renamed from: do, reason: not valid java name */
    private final long f27926do;

    /* renamed from: for, reason: not valid java name */
    private final long f27927for;

    /* renamed from: if, reason: not valid java name */
    private boolean f27928if;

    /* renamed from: new, reason: not valid java name */
    private long f27929new;

    private Cbreak(long j, long j2, long j3) {
        this.f27926do = j2;
        boolean z = true;
        int iM5557else = oc2.m5557else(j, j2);
        if (j3 <= 0 ? iM5557else < 0 : iM5557else > 0) {
            z = false;
        }
        this.f27928if = z;
        this.f27927for = oa2.m5524goto(j3);
        this.f27929new = this.f27928if ? j : j2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27928if;
    }

    @Override // android.support.v4.qa2
    /* renamed from: if */
    public long mo6465if() {
        long j = this.f27929new;
        if (j != this.f27926do) {
            this.f27929new = oa2.m5524goto(this.f27927for + j);
        } else {
            if (!this.f27928if) {
                throw new NoSuchElementException();
            }
            this.f27928if = false;
        }
        return j;
    }

    public /* synthetic */ Cbreak(long j, long j2, long j3, rx rxVar) {
        this(j, j2, j3);
    }
}
