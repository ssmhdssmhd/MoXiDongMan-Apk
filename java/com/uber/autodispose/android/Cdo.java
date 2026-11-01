package com.uber.autodispose.android;

import android.os.Build;
import android.support.v4.g91;
import android.support.v4.h5;
import android.view.View;
import androidx.annotation.RestrictTo;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.uber.autodispose.android.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo implements CompletableSource {

    /* renamed from: do, reason: not valid java name */
    private final View f20744do;

    /* renamed from: com.uber.autodispose.android.do$do, reason: invalid class name and collision with other inner class name */
    public static final class ViewOnAttachStateChangeListenerC0197do extends io.reactivex.android.Cdo implements View.OnAttachStateChangeListener {

        /* renamed from: for, reason: not valid java name */
        private final CompletableObserver f20745for;

        /* renamed from: if, reason: not valid java name */
        private final View f20746if;

        public ViewOnAttachStateChangeListenerC0197do(View view, CompletableObserver completableObserver) {
            this.f20746if = view;
            this.f20745for = completableObserver;
        }

        @Override // io.reactivex.android.Cdo
        /* renamed from: do, reason: not valid java name */
        public void mo24566do() {
            this.f20746if.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (isDisposed()) {
                return;
            }
            this.f20745for.onComplete();
        }
    }

    public Cdo(View view) {
        this.f20744do = view;
    }

    @Override // io.reactivex.CompletableSource
    public void subscribe(CompletableObserver completableObserver) {
        ViewOnAttachStateChangeListenerC0197do viewOnAttachStateChangeListenerC0197do = new ViewOnAttachStateChangeListenerC0197do(this.f20744do, completableObserver);
        completableObserver.onSubscribe(viewOnAttachStateChangeListenerC0197do);
        if (!h5.m2947if()) {
            completableObserver.onError(new IllegalStateException("Views can only be bound to on the main thread!"));
            return;
        }
        if (!((Build.VERSION.SDK_INT >= 19 && this.f20744do.isAttachedToWindow()) || this.f20744do.getWindowToken() != null)) {
            completableObserver.onError(new g91("View is not attached!"));
            return;
        }
        this.f20744do.addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0197do);
        if (viewOnAttachStateChangeListenerC0197do.isDisposed()) {
            this.f20744do.removeOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0197do);
        }
    }
}
