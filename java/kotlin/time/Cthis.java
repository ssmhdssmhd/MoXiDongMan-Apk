package kotlin.time;

import android.support.v4.m41;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\"\"\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\n0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000b¨\u0006\r"}, d2 = {"", "decimals", "Ljava/text/DecimalFormat;", "do", "", ES6Iterator.VALUE_PROPERTY, "", "if", "for", "", "Ljava/lang/ThreadLocal;", "[Ljava/lang/ThreadLocal;", "precisionFormats", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.time.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static final ThreadLocal<DecimalFormat>[] f28070do;

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal<>();
        }
        f28070do = threadLocalArr;
    }

    /* renamed from: do, reason: not valid java name */
    private static final DecimalFormat m31355do(int i) {
        DecimalFormat decimalFormat = new DecimalFormat("0");
        if (i > 0) {
            decimalFormat.setMinimumFractionDigits(i);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static final String m31356for(double d, int i) {
        DecimalFormat decimalFormatM31355do = m31355do(0);
        decimalFormatM31355do.setMaximumFractionDigits(i);
        String str = decimalFormatM31355do.format(d);
        Csuper.m30696super(str, "createFormatForDecimals(… }\n        .format(value)");
        return str;
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final String m31357if(double d, int i) {
        DecimalFormat decimalFormatM31355do;
        ThreadLocal<DecimalFormat>[] threadLocalArr = f28070do;
        if (i < threadLocalArr.length) {
            ThreadLocal<DecimalFormat> threadLocal = threadLocalArr[i];
            DecimalFormat decimalFormatM31355do2 = threadLocal.get();
            if (decimalFormatM31355do2 == null) {
                decimalFormatM31355do2 = m31355do(i);
                threadLocal.set(decimalFormatM31355do2);
            }
            decimalFormatM31355do = decimalFormatM31355do2;
        } else {
            decimalFormatM31355do = m31355do(i);
        }
        String str = decimalFormatM31355do.format(d);
        Csuper.m30696super(str, "format.format(value)");
        return str;
    }
}
