package android.support.v4;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class c81 {

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f632do = new BigInteger(Integer.toString(Integer.MIN_VALUE));

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f634if = new BigInteger(Integer.toString(Integer.MAX_VALUE));

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f633for = new BigInteger(Long.toString(Long.MIN_VALUE));

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f635new = new BigInteger(Long.toString(Long.MAX_VALUE));

    private c81() {
    }

    /* renamed from: do, reason: not valid java name */
    public static List m790do(List list) {
        int size = list.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 1) {
            return Collections.singletonList(list.get(0));
        }
        if (list instanceof ArrayList) {
            ((ArrayList) list).trimToSize();
        }
        return list;
    }

    /* renamed from: if, reason: not valid java name */
    public static Number m791if(Number number) {
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (bigDecimal.scale() == 0) {
                number = bigDecimal.unscaledValue();
            } else {
                double dDoubleValue = bigDecimal.doubleValue();
                if (dDoubleValue != Double.POSITIVE_INFINITY && dDoubleValue != Double.NEGATIVE_INFINITY) {
                    return Double.valueOf(dDoubleValue);
                }
            }
        }
        if (!(number instanceof BigInteger)) {
            return number;
        }
        BigInteger bigInteger = (BigInteger) number;
        return (bigInteger.compareTo(f634if) > 0 || bigInteger.compareTo(f632do) < 0) ? (bigInteger.compareTo(f635new) > 0 || bigInteger.compareTo(f633for) < 0) ? number : Long.valueOf(bigInteger.longValue()) : Integer.valueOf(bigInteger.intValue());
    }
}
