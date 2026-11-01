package android.support.v4;

import com.google.common.base.FinalizableReference;
import com.google.common.base.FinalizableReferenceQueue;
import java.lang.ref.SoftReference;

@li0
/* loaded from: classes.dex */
public abstract class gb0<T> extends SoftReference<T> implements FinalizableReference {
    public gb0(T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.f13614do);
        finalizableReferenceQueue.m14980if();
    }
}
