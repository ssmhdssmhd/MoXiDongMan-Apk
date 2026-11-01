package kotlin.ranges;

import android.support.v4.m41;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0011\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0013\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0016¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/do;", "Lkotlin/ranges/ClosedFloatingPointRange;", "", ak.av, "b", "", "new", ES6Iterator.VALUE_PROPERTY, "do", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", Cstatic.m1, "_start", "if", "_endInclusive", "for", "()Ljava/lang/Double;", "start", "endInclusive", "<init>", "(DD)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo implements ClosedFloatingPointRange<Double> {

    /* renamed from: do, reason: not valid java name */
    private final double f27930do;

    /* renamed from: if, reason: not valid java name */
    private final double f27931if;

    public Cdo(double d, double d2) {
        this.f27930do = d;
        this.f27931if = d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m30936do(((Number) comparable).doubleValue());
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m30936do(double d) {
        return d >= this.f27930do && d <= this.f27931if;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Cdo) {
            if (!isEmpty() || !((Cdo) obj).isEmpty()) {
                Cdo cdo = (Cdo) obj;
                if (this.f27930do != cdo.f27930do || this.f27931if != cdo.f27931if) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public Double getStart() {
        return Double.valueOf(this.f27930do);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Double.valueOf(this.f27930do).hashCode() * 31) + Double.valueOf(this.f27931if).hashCode();
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Double getEndInclusive() {
        return Double.valueOf(this.f27931if);
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return this.f27930do > this.f27931if;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public /* bridge */ /* synthetic */ boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        return m30939new(((Number) comparable).doubleValue(), ((Number) comparable2).doubleValue());
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m30939new(double d, double d2) {
        return d <= d2;
    }

    @m41
    public String toString() {
        return this.f27930do + ".." + this.f27931if;
    }
}
