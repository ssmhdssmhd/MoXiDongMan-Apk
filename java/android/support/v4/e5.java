package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;

@wp0(name = "AutoCloseableKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aJ\u0010\u0005\u001a\u00028\u0001\"\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u0000\"\u0004\b\u0001\u0010\u0002*\u00028\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0018\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000b"}, d2 = {"Ljava/lang/AutoCloseable;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/Function1;", "block", "if", "(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "cause", "Landroid/support/v4/ub2;", "do", "kotlin-stdlib-jdk7"}, k = 2, mv = {1, 5, 1}, pn = "kotlin")
/* loaded from: classes3.dex */
public final class e5 {
    @wg1
    @iz1(version = "1.2")
    /* renamed from: do, reason: not valid java name */
    public static final void m1655do(@z41 AutoCloseable autoCloseable, @z41 Throwable th) throws Exception {
        if (autoCloseable == null) {
            return;
        }
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            Celse.m30428do(th, th2);
        }
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <T extends AutoCloseable, R> R m1656if(T t, Function1<? super T, ? extends R> function1) throws Exception {
        try {
            R rInvoke = function1.invoke(t);
            tm0.m7996new(1);
            m1655do(t, null);
            tm0.m7994for(1);
            return rInvoke;
        } finally {
        }
    }
}
