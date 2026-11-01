package io.reactivex.internal.util;

import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.concurrent.CountDownLatch;

/* renamed from: io.reactivex.internal.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends CountDownLatch implements Consumer<Throwable>, Action {

    /* renamed from: do, reason: not valid java name */
    public Throwable f27441do;

    public Cif() {
        super(1);
    }

    @Override // io.reactivex.functions.Consumer
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void accept(Throwable th) {
        this.f27441do = th;
        countDown();
    }

    @Override // io.reactivex.functions.Action
    public void run() {
        countDown();
    }
}
