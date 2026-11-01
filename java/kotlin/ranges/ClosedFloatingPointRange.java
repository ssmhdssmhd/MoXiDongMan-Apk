package kotlin.ranges;

import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.lang.Comparable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\bg\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H\u0016J\u001f\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00028\u0000H&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/ranges/ClosedFloatingPointRange;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/ranges/ClosedRange;", ES6Iterator.VALUE_PROPERTY, "", "contains", "(Ljava/lang/Comparable;)Z", "isEmpty", ak.av, "b", "lessThanOrEquals", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface ClosedFloatingPointRange<T extends Comparable<? super T>> extends ClosedRange<T> {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.ranges.ClosedFloatingPointRange$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static <T extends Comparable<? super T>> boolean m30859do(@m41 ClosedFloatingPointRange<T> closedFloatingPointRange, @m41 T value) {
            Csuper.m30700throw(value, "value");
            return closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), value) && closedFloatingPointRange.lessThanOrEquals(value, closedFloatingPointRange.getEndInclusive());
        }

        /* renamed from: if, reason: not valid java name */
        public static <T extends Comparable<? super T>> boolean m30860if(@m41 ClosedFloatingPointRange<T> closedFloatingPointRange) {
            return !closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), closedFloatingPointRange.getEndInclusive());
        }
    }

    @Override // kotlin.ranges.ClosedRange
    boolean contains(@m41 T t);

    @Override // kotlin.ranges.ClosedRange
    boolean isEmpty();

    boolean lessThanOrEquals(@m41 T t, @m41 T t2);
}
