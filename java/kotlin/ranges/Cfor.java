package kotlin.ranges;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.lang.Comparable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.ClosedRange;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0012\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0017\u0012\u0006\u0010\u0010\u001a\u00028\u0000\u0012\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u001c\u0010\u0010\u001a\u00028\u00008\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0013\u001a\u00028\u00008\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u000f¨\u0006\u0016"}, d2 = {"Lkotlin/ranges/for;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/ranges/ClosedRange;", "", "other", "", "equals", "", "hashCode", "", "toString", "do", "Ljava/lang/Comparable;", "getStart", "()Ljava/lang/Comparable;", "start", "if", "getEndInclusive", "endInclusive", "<init>", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor<T extends Comparable<? super T>> implements ClosedRange<T> {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final T f27936do;

    /* renamed from: if, reason: not valid java name */
    @m41
    private final T f27937if;

    public Cfor(@m41 T start, @m41 T endInclusive) {
        Csuper.m30700throw(start, "start");
        Csuper.m30700throw(endInclusive, "endInclusive");
        this.f27936do = start;
        this.f27937if = endInclusive;
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean contains(@m41 T value) {
        Csuper.m30700throw(value, "value");
        return ClosedRange.Cdo.m30861do(this, value);
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Cfor) {
            if (!isEmpty() || !((Cfor) obj).isEmpty()) {
                Cfor cfor = (Cfor) obj;
                if (!Csuper.m30676else(getStart(), cfor.getStart()) || !Csuper.m30676else(getEndInclusive(), cfor.getEndInclusive())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    public T getEndInclusive() {
        return this.f27937if;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    public T getStart() {
        return this.f27936do;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getStart().hashCode() * 31) + getEndInclusive().hashCode();
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return ClosedRange.Cdo.m30862if(this);
    }

    @m41
    public String toString() {
        return getStart() + ".." + getEndInclusive();
    }
}
