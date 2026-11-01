package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.io.Closeable;
import java.io.IOException;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;

@wp0(name = "CloseableKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aM\u0010\u0006\u001a\u00028\u0001\"\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u0000\"\u0004\b\u0001\u0010\u0002*\u00028\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0018\u0010\u000b\u001a\u00020\n*\u0004\u0018\u00010\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0001\u0082\u0002\u000f\n\u0006\b\u0011(\u00050\u0001\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"Ljava/io/Closeable;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/Function1;", "block", "Requires newer compiler version to be inlined correctly.", "if", "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "cause", "Landroid/support/v4/ub2;", "do", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class qm {
    @wg1
    @iz1(version = "1.1")
    /* renamed from: do, reason: not valid java name */
    public static final void m6624do(@z41 Closeable closeable, @z41 Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            Celse.m30428do(th, th2);
        }
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <T extends Closeable, R> R m6625if(T t, Function1<? super T, ? extends R> function1) throws IOException {
        try {
            R rInvoke = function1.invoke(t);
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                m6624do(t, null);
            } else if (t != null) {
                t.close();
            }
            tm0.m7994for(1);
            return rInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    m6624do(t, th);
                } else if (t != null) {
                    try {
                        t.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }
}
