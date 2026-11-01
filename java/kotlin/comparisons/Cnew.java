package kotlin.comparisons;

import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.util.Comparator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0007\u001aI\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001aA\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\t\u0010\n\u001aM\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000b\"\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\r\u0010\u000e\u001aI\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\u000f\u0010\b\u001aA\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\u0010\u0010\n\u001aM\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000b\"\u00028\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0005H\u0007¢\u0006\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, ak.av, "b", "c", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "C", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;", Cstatic.m1, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;", "", "other", ExifInterface.LONGITUDE_EAST, "(Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;", "F", "G", "H", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/ComparisonsKt")
/* renamed from: kotlin.comparisons.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew extends Cfor {
    @iz1(version = "1.1")
    public static final <T> T C(T t, T t2, T t3, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return (T) D(t, D(t2, t3, comparator), comparator);
    }

    @iz1(version = "1.1")
    public static final <T> T D(T t, T t2, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return comparator.compare(t, t2) >= 0 ? t : t2;
    }

    @iz1(version = "1.4")
    public static final <T> T E(T t, @m41 T[] other, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(other, "other");
        Csuper.m30700throw(comparator, "comparator");
        for (T t2 : other) {
            if (comparator.compare(t, t2) < 0) {
                t = t2;
            }
        }
        return t;
    }

    @iz1(version = "1.1")
    public static final <T> T F(T t, T t2, T t3, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return (T) G(t, G(t2, t3, comparator), comparator);
    }

    @iz1(version = "1.1")
    public static final <T> T G(T t, T t2, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return comparator.compare(t, t2) <= 0 ? t : t2;
    }

    @iz1(version = "1.4")
    public static final <T> T H(T t, @m41 T[] other, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(other, "other");
        Csuper.m30700throw(comparator, "comparator");
        for (T t2 : other) {
            if (comparator.compare(t, t2) > 0) {
                t = t2;
            }
        }
        return t;
    }
}
