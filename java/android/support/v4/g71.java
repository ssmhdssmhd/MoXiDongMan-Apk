package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.chromium.base.Callback;
import org.chromium.base.Promise;
import org.chromium.base.ThreadUtils;
import org.chromium.base.supplier.Cif;
import org.chromium.base.supplier.OneshotSupplier;

/* loaded from: classes3.dex */
public class g71<T> implements OneshotSupplier<T> {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f2074for = false;

    /* renamed from: do, reason: not valid java name */
    private final Promise<T> f2075do = new Promise<>();

    /* renamed from: if, reason: not valid java name */
    private final ThreadUtils.Cdo f2076if = new ThreadUtils.Cdo();

    /* renamed from: do, reason: not valid java name */
    public void m2594do(@NonNull T t) {
        this.f2076if.m36949do();
        this.f2075do.m36918else(t);
    }

    @Override // org.chromium.base.supplier.Supplier
    @Nullable
    public T get() {
        this.f2076if.m36949do();
        if (this.f2075do.m36916break()) {
            return this.f2075do.m36923this();
        }
        return null;
    }

    @Override // org.chromium.base.supplier.Supplier
    public /* synthetic */ boolean hasValue() {
        return Cif.m37202do(this);
    }

    @Override // org.chromium.base.supplier.OneshotSupplier
    public T onAvailable(Callback<T> callback) {
        this.f2076if.m36949do();
        this.f2075do.m36921return(callback);
        return get();
    }
}
