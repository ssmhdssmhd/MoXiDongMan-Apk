package kotlin.text;

import android.support.v4.m41;
import android.support.v4.tp0;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlin/text/default;", "", "", "do", "Ljava/lang/String;", "LINE_SEPARATOR", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.default, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdefault {

    /* renamed from: do, reason: not valid java name */
    @m41
    @tp0
    public static final String f28034do;

    /* renamed from: if, reason: not valid java name */
    @m41
    public static final Cdefault f28035if = new Cdefault();

    static {
        String property = System.getProperty("line.separator");
        Csuper.m30672const(property);
        f28034do = property;
    }

    private Cdefault() {
    }
}
