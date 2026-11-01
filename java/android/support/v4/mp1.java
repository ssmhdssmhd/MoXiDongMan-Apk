package android.support.v4;

import androidx.lifecycle.LifecycleOwner;
import com.uber.autodispose.AutoDisposeConverter;
import com.uber.autodispose.Cnew;
import com.uber.autodispose.android.lifecycle.Cdo;

/* loaded from: classes2.dex */
public class mp1 {
    private mp1() {
        throw new IllegalStateException("Can't instance the RxLifecycleUtils");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> AutoDisposeConverter<T> m4975do(LifecycleOwner lifecycleOwner) {
        return Cnew.m24630do(Cdo.m24577try(lifecycleOwner));
    }
}
