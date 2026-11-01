package org.chromium.base.supplier;

import android.support.v4.gf;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import org.chromium.base.Callback;

/* renamed from: org.chromium.base.supplier.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo<E> {

    /* renamed from: do, reason: not valid java name */
    private final Callback<E> f33222do;

    /* renamed from: for, reason: not valid java name */
    private final Callback<E> f33223for;

    /* renamed from: if, reason: not valid java name */
    private final WeakReference<ObservableSupplier<E>> f33224if;

    /* renamed from: org.chromium.base.supplier.do$if, reason: invalid class name */
    public class Cif implements Callback<E> {

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ boolean f33225if = false;

        private Cif() {
        }

        @Override // org.chromium.base.Callback
        public /* synthetic */ Runnable bind(Object obj) {
            return gf.m2653do(this, obj);
        }

        @Override // org.chromium.base.Callback
        public void onResult(E e) {
            Cdo.this.f33223for.onResult(e);
            ((ObservableSupplier) Cdo.this.f33224if.get()).removeObserver(Cdo.this.f33222do);
        }
    }

    public Cdo(@NonNull ObservableSupplier<E> observableSupplier, @NonNull Callback<E> callback) {
        Cif cif = new Cif();
        this.f33222do = cif;
        this.f33224if = new WeakReference<>(observableSupplier);
        this.f33223for = callback;
        observableSupplier.addObserver(cif);
    }
}
