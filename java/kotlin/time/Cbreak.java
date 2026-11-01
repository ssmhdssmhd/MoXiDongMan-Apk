package kotlin.time;

import android.support.v4.f72;
import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.ub2;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;
import kotlin.time.TimeSource;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a5\u0010\u0007\u001a\u00020\u0003*\u00020\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0007\u0010\b\u001a3\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\t2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0087\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a7\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\t*\u00020\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0087\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Lkotlin/Function0;", "Landroid/support/v4/ub2;", "block", "Lkotlin/time/new;", "do", "(Lkotlin/jvm/functions/Function0;)J", "Lkotlin/time/TimeSource;", "if", "(Lkotlin/time/TimeSource;Lkotlin/jvm/functions/Function0;)J", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/f72;", "for", "new", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.time.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak {
    @l90
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    public static final long m31266do(@m41 Function0<ub2> block) {
        Csuper.m30700throw(block, "block");
        Ccatch ccatchMarkNow = TimeSource.Cif.f28053if.markNow();
        block.invoke();
        return ccatchMarkNow.mo31270do();
    }

    @l90
    @m41
    @iz1(version = "1.3")
    /* renamed from: for, reason: not valid java name */
    public static final <T> f72<T> m31267for(@m41 Function0<? extends T> block) {
        Csuper.m30700throw(block, "block");
        return new f72<>(block.invoke(), TimeSource.Cif.f28053if.markNow().mo31270do(), null);
    }

    @l90
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static final long m31268if(@m41 TimeSource measureTime, @m41 Function0<ub2> block) {
        Csuper.m30700throw(measureTime, "$this$measureTime");
        Csuper.m30700throw(block, "block");
        Ccatch ccatchMarkNow = measureTime.markNow();
        block.invoke();
        return ccatchMarkNow.mo31270do();
    }

    @l90
    @m41
    @iz1(version = "1.3")
    /* renamed from: new, reason: not valid java name */
    public static final <T> f72<T> m31269new(@m41 TimeSource measureTimedValue, @m41 Function0<? extends T> block) {
        Csuper.m30700throw(measureTimedValue, "$this$measureTimedValue");
        Csuper.m30700throw(block, "block");
        return new f72<>(block.invoke(), measureTimedValue.markNow().mo31270do(), null);
    }
}
