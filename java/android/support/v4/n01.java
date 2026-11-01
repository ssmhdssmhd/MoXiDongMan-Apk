package android.support.v4;

import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.time.Cif;
import kotlin.time.TimeSource;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t"}, d2 = {"Landroid/support/v4/n01;", "Lkotlin/time/if;", "Lkotlin/time/TimeSource;", "", "if", "", "toString", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class n01 extends Cif implements TimeSource {

    /* renamed from: if, reason: not valid java name */
    @m41
    public static final n01 f4101if = new n01();

    private n01() {
        super(TimeUnit.NANOSECONDS);
    }

    @Override // kotlin.time.Cif
    /* renamed from: if, reason: not valid java name */
    public long mo5068if() {
        return System.nanoTime();
    }

    @m41
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }
}
