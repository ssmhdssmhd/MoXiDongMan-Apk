package android.support.v4;

import android.os.Looper;
import androidx.annotation.RestrictTo;
import io.reactivex.functions.BooleanSupplier;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class h5 {

    /* renamed from: do, reason: not valid java name */
    private static final BooleanSupplier f2312do = new BooleanSupplier() { // from class: android.support.v4.g5
        @Override // io.reactivex.functions.BooleanSupplier
        public final boolean getAsBoolean() {
            return h5.m2946for();
        }
    };

    private h5() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ boolean m2946for() throws Exception {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m2947if() {
        return f5.m2139for(f2312do);
    }
}
