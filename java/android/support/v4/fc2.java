package android.support.v4;

import androidx.annotation.NonNull;
import org.chromium.base.Cstatic;
import org.chromium.base.UnownedUserData;
import org.chromium.base.supplier.DestroyableObservableSupplier;

/* loaded from: classes3.dex */
public abstract class fc2<E> extends h61<E> implements DestroyableObservableSupplier<E>, UnownedUserData {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f1763this = false;

    /* renamed from: else, reason: not valid java name */
    private final ec2<fc2<E>> f1764else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f1765goto = false;

    /* JADX WARN: Multi-variable type inference failed */
    public fc2(@NonNull ec2<? extends fc2<E>> ec2Var) {
        this.f1764else = ec2Var;
    }

    /* renamed from: case, reason: not valid java name */
    public void m2246case(@NonNull Cstatic cstatic) {
        this.f1764else.m1795if(cstatic, this);
    }

    @Override // org.chromium.base.supplier.DestroyableObservableSupplier
    public void destroy() {
        this.f1764else.m1793for(this);
        this.f1765goto = true;
    }

    @Override // org.chromium.base.UnownedUserData
    public /* synthetic */ boolean informOnDetachmentFromHost() {
        return cc2.m848do(this);
    }

    @Override // org.chromium.base.UnownedUserData
    public /* synthetic */ void onDetachedFromHost(Cstatic cstatic) {
        cc2.m849if(this, cstatic);
    }
}
