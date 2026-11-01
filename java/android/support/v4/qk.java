package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.ClosedRange;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0016B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0011\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0017"}, d2 = {"Landroid/support/v4/qk;", "Landroid/support/v4/ok;", "Lkotlin/ranges/ClosedRange;", "", ES6Iterator.VALUE_PROPERTY, "", "case", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "goto", "()Ljava/lang/Character;", "start", "else", "endInclusive", "<init>", "(CC)V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class qk extends ok implements ClosedRange<Character> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f5444case = new Cdo(null);

    /* renamed from: try, reason: not valid java name */
    @m41
    private static final qk f5445try = new qk((char) 1, (char) 0);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"android/support/v4/qk$do", "", "Landroid/support/v4/qk;", "EMPTY", "Landroid/support/v4/qk;", "do", "()Landroid/support/v4/qk;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.qk$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final qk m6614do() {
            return qk.f5445try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public qk(char c, char c2) {
        super(c, c2, 1);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m6611case(char c) {
        return Csuper.m30692public(m5695do(), c) <= 0 && Csuper.m30692public(c, m5697if()) <= 0;
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m6611case(((Character) comparable).charValue());
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Character getEndInclusive() {
        return Character.valueOf(m5697if());
    }

    @Override // android.support.v4.ok
    public boolean equals(@z41 Object obj) {
        if (obj instanceof qk) {
            if (!isEmpty() || !((qk) obj).isEmpty()) {
                qk qkVar = (qk) obj;
                if (m5695do() != qkVar.m5695do() || m5697if() != qkVar.m5697if()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public Character getStart() {
        return Character.valueOf(m5695do());
    }

    @Override // android.support.v4.ok
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (m5695do() * 31) + m5697if();
    }

    @Override // android.support.v4.ok, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return Csuper.m30692public(m5695do(), m5697if()) > 0;
    }

    @Override // android.support.v4.ok
    @m41
    public String toString() {
        return m5695do() + ".." + m5697if();
    }
}
