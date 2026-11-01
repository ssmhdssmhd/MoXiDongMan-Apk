package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import freemarker.core.k;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a(\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001\u001a(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001\u001a(\u0010\t\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001*\u001e\b\u0007\u0010\u000e\"\u00020\u00022\u00020\u0002B\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\fB\u0002\b\r¨\u0006\u000f"}, d2 = {"", ES6Iterator.VALUE_PROPERTY, "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "if", "", "new", "for", "Landroid/support/v4/iz1;", k.f23925continue, "1.3", "Landroid/support/v4/l90;", "DurationUnit", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/time/DurationUnitKt")
/* renamed from: kotlin.time.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {
    @l90
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ void m31277do() {
    }

    @l90
    @iz1(version = "1.5")
    /* renamed from: for, reason: not valid java name */
    public static final long m31278for(long j, @m41 TimeUnit sourceUnit, @m41 TimeUnit targetUnit) {
        Csuper.m30700throw(sourceUnit, "sourceUnit");
        Csuper.m30700throw(targetUnit, "targetUnit");
        return targetUnit.convert(j, sourceUnit);
    }

    @l90
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static final double m31279if(double d, @m41 TimeUnit sourceUnit, @m41 TimeUnit targetUnit) {
        Csuper.m30700throw(sourceUnit, "sourceUnit");
        Csuper.m30700throw(targetUnit, "targetUnit");
        long jConvert = targetUnit.convert(1L, sourceUnit);
        if (jConvert > 0) {
            double d2 = jConvert;
            Double.isNaN(d2);
            return d * d2;
        }
        double dConvert = sourceUnit.convert(1L, targetUnit);
        Double.isNaN(dConvert);
        return d / dConvert;
    }

    @l90
    @iz1(version = "1.5")
    /* renamed from: new, reason: not valid java name */
    public static final long m31280new(long j, @m41 TimeUnit sourceUnit, @m41 TimeUnit targetUnit) {
        Csuper.m30700throw(sourceUnit, "sourceUnit");
        Csuper.m30700throw(targetUnit, "targetUnit");
        return targetUnit.convert(j, sourceUnit);
    }
}
