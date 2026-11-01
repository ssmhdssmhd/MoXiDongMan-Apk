package kotlin.comparisons;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Comparator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0012\u0012\u0004\u0012\u00028\u00000\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u0003B\u001f\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u0003R)\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/comparisons/else;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/Comparator;", "Lkotlin/Comparator;", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "reversed", "do", "Ljava/util/Comparator;", "()Ljava/util/Comparator;", "comparator", "<init>", "(Ljava/util/Comparator;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.comparisons.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse<T> implements Comparator<T> {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Comparator<T> f27762do;

    public Celse(@m41 Comparator<T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        this.f27762do = comparator;
    }

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        return this.f27762do.compare(t2, t);
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final Comparator<T> m30289do() {
        return this.f27762do;
    }

    @Override // java.util.Comparator
    @m41
    public final Comparator<T> reversed() {
        return this.f27762do;
    }
}
