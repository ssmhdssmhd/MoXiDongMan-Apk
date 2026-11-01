package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.util.Ccase;

@Deprecated
/* loaded from: classes.dex */
public abstract class fz1<Z> extends p7<Z> {

    /* renamed from: for, reason: not valid java name */
    private final int f2024for;

    /* renamed from: if, reason: not valid java name */
    private final int f2025if;

    public fz1() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        if (Ccase.m12054static(this.f2025if, this.f2024for)) {
            sizeReadyCallback.onSizeReady(this.f2025if, this.f2024for);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f2025if + " and height: " + this.f2024for + ", either provide dimensions in the constructor or call override()");
    }

    @Override // com.bumptech.glide.request.target.Target
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    public fz1(int i, int i2) {
        this.f2025if = i;
        this.f2024for = i2;
    }
}
