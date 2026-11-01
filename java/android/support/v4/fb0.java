package android.support.v4;

import com.google.common.base.FinalizableReference;
import com.google.common.base.FinalizableReferenceQueue;
import java.lang.ref.PhantomReference;

@li0
/* loaded from: classes.dex */
public abstract class fb0<T> extends PhantomReference<T> implements FinalizableReference {
    public fb0(T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.f13614do);
        finalizableReferenceQueue.m14980if();
    }
}
