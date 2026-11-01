package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.android.schedulers.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif extends Ctry {

    /* renamed from: for, reason: not valid java name */
    private final boolean f25261for;

    /* renamed from: if, reason: not valid java name */
    private final Handler f25262if;

    /* renamed from: io.reactivex.android.schedulers.if$do, reason: invalid class name */
    public static final class Cdo extends Ctry.Cfor {

        /* renamed from: do, reason: not valid java name */
        private final Handler f25263do;

        /* renamed from: for, reason: not valid java name */
        private volatile boolean f25264for;

        /* renamed from: if, reason: not valid java name */
        private final boolean f25265if;

        public Cdo(Handler handler, boolean z) {
            this.f25263do = handler;
            this.f25265if = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25264for = true;
            this.f25263do.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.Ctry.Cfor
        @SuppressLint({"NewApi"})
        /* renamed from: for, reason: not valid java name */
        public Disposable mo29362for(Runnable runnable, long j, TimeUnit timeUnit) {
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.f25264for) {
                return io.reactivex.disposables.Cif.m29364do();
            }
            RunnableC0267if runnableC0267if = new RunnableC0267if(this.f25263do, jp1.o(runnable));
            Message messageObtain = Message.obtain(this.f25263do, runnableC0267if);
            messageObtain.obj = this;
            if (this.f25265if) {
                messageObtain.setAsynchronous(true);
            }
            this.f25263do.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
            if (!this.f25264for) {
                return runnableC0267if;
            }
            this.f25263do.removeCallbacks(runnableC0267if);
            return io.reactivex.disposables.Cif.m29364do();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25264for;
        }
    }

    /* renamed from: io.reactivex.android.schedulers.if$if, reason: invalid class name and collision with other inner class name */
    public static final class RunnableC0267if implements Runnable, Disposable {

        /* renamed from: do, reason: not valid java name */
        private final Handler f25266do;

        /* renamed from: for, reason: not valid java name */
        private volatile boolean f25267for;

        /* renamed from: if, reason: not valid java name */
        private final Runnable f25268if;

        public RunnableC0267if(Handler handler, Runnable runnable) {
            this.f25266do = handler;
            this.f25268if = runnable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25266do.removeCallbacks(this);
            this.f25267for = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25267for;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f25268if.run();
            } catch (Throwable th) {
                jp1.l(th);
            }
        }
    }

    public Cif(Handler handler, boolean z) {
        this.f25262if = handler;
        this.f25261for = z;
    }

    @Override // io.reactivex.Ctry
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cdo(this.f25262if, this.f25261for);
    }

    @Override // io.reactivex.Ctry
    @SuppressLint({"NewApi"})
    /* renamed from: try, reason: not valid java name */
    public Disposable mo29361try(Runnable runnable, long j, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        RunnableC0267if runnableC0267if = new RunnableC0267if(this.f25262if, jp1.o(runnable));
        Message messageObtain = Message.obtain(this.f25262if, runnableC0267if);
        if (this.f25261for) {
            messageObtain.setAsynchronous(true);
        }
        this.f25262if.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
        return runnableC0267if;
    }
}
