package kotlin.comparisons;

import android.support.v4.m41;
import com.umeng.analytics.pro.ak;
import java.util.Comparator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002`\u0004B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ$\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\"\u0010\t\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002`\u0004¨\u0006\f"}, d2 = {"Lkotlin/comparisons/case;", "Ljava/util/Comparator;", "", "", "Lkotlin/Comparator;", ak.av, "b", "", "do", "reversed", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.comparisons.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements Comparator<Comparable<? super Object>> {

    /* renamed from: do, reason: not valid java name */
    @m41
    public static final Ccase f27761do = new Ccase();

    private Ccase() {
    }

    @Override // java.util.Comparator
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compare(@m41 Comparable<Object> a, @m41 Comparable<Object> b) {
        Csuper.m30700throw(a, "a");
        Csuper.m30700throw(b, "b");
        return b.compareTo(a);
    }

    @Override // java.util.Comparator
    @m41
    public final Comparator<Comparable<? super Object>> reversed() {
        return Ctry.f27788do;
    }
}
