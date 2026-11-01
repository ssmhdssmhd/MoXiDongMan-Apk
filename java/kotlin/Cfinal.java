package kotlin;

import android.support.v4.gs0;
import android.support.v4.kc2;
import android.support.v4.m41;
import android.support.v4.w31;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a \u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a*\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\t\u001a\u0004\u0018\u00010\b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function0;", "initializer", "Lkotlin/Lazy;", "for", "Lkotlin/throw;", "mode", "if", "", "lock", "do", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/LazyKt")
/* renamed from: kotlin.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal {
    @m41
    /* renamed from: do, reason: not valid java name */
    public static final <T> Lazy<T> m30445do(@z41 Object obj, @m41 Function0<? extends T> initializer) {
        Csuper.m30700throw(initializer, "initializer");
        return new Cvolatile(initializer, obj);
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static <T> Lazy<T> m30446for(@m41 Function0<? extends T> initializer) {
        Csuper.m30700throw(initializer, "initializer");
        return new Cvolatile(initializer, null, 2, null);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final <T> Lazy<T> m30447if(@m41 Cthrow mode, @m41 Function0<? extends T> initializer) {
        Csuper.m30700throw(mode, "mode");
        Csuper.m30700throw(initializer, "initializer");
        int i = gs0.f2238do[mode.ordinal()];
        if (i == 1) {
            return new Cvolatile(initializer, null, 2, null);
        }
        if (i == 2) {
            return new Cprivate(initializer);
        }
        if (i == 3) {
            return new kc2(initializer);
        }
        throw new w31();
    }
}
