package kotlin.ranges;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.lang.Comparable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bf\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H\u0016R\u0016\u0010\u000b\u001a\u00028\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00028\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/ranges/ClosedRange;", "", ExifInterface.GPS_DIRECTION_TRUE, "", ES6Iterator.VALUE_PROPERTY, "", "contains", "(Ljava/lang/Comparable;)Z", "isEmpty", "getStart", "()Ljava/lang/Comparable;", "start", "getEndInclusive", "endInclusive", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface ClosedRange<T extends Comparable<? super T>> {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.ranges.ClosedRange$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static <T extends Comparable<? super T>> boolean m30861do(@m41 ClosedRange<T> closedRange, @m41 T value) {
            Csuper.m30700throw(value, "value");
            return value.compareTo(closedRange.getStart()) >= 0 && value.compareTo(closedRange.getEndInclusive()) <= 0;
        }

        /* renamed from: if, reason: not valid java name */
        public static <T extends Comparable<? super T>> boolean m30862if(@m41 ClosedRange<T> closedRange) {
            return closedRange.getStart().compareTo(closedRange.getEndInclusive()) > 0;
        }
    }

    boolean contains(@m41 T t);

    @m41
    T getEndInclusive();

    @m41
    T getStart();

    boolean isEmpty();
}
