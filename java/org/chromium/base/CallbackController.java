package org.chromium.base;

import android.support.v4.gf;
import android.support.v4.ii0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes3.dex */
public final class CallbackController {

    /* renamed from: do, reason: not valid java name */
    @Nullable
    @ii0("mReadWriteLock")
    private ArrayList<WeakReference<Cancelable>> f32959do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    private final ReadWriteLock f32960if = new ReentrantReadWriteLock(true);

    public interface Cancelable {
        void cancel();
    }

    /* renamed from: org.chromium.base.CallbackController$for, reason: invalid class name */
    public class Cfor<T> implements Cancelable, Callback<T> {

        /* renamed from: do, reason: not valid java name */
        @ii0("mReadWriteLock")
        private Callback<T> f32961do;

        @Override // org.chromium.base.Callback
        public /* synthetic */ Runnable bind(Object obj) {
            return gf.m2653do(this, obj);
        }

        @Override // org.chromium.base.CallbackController.Cancelable
        public void cancel() {
            this.f32961do = null;
        }

        @Override // org.chromium.base.Callback
        public void onResult(T t) {
            Cif cifM36756do = Cif.m36756do(CallbackController.this.f32960if.readLock());
            try {
                Callback<T> callback = this.f32961do;
                if (callback != null) {
                    callback.onResult(t);
                }
                if (cifM36756do != null) {
                    cifM36756do.close();
                }
            } catch (Throwable th) {
                if (cifM36756do != null) {
                    try {
                        cifM36756do.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        private Cfor(@NonNull Callback<T> callback) {
            this.f32961do = callback;
        }
    }

    /* renamed from: org.chromium.base.CallbackController$if, reason: invalid class name */
    public static class Cif implements AutoCloseable {

        /* renamed from: do, reason: not valid java name */
        private final Lock f32963do;

        /* renamed from: if, reason: not valid java name */
        private boolean f32964if;

        private Cif(Lock lock, boolean z) {
            this.f32963do = lock;
            this.f32964if = z;
        }

        /* renamed from: do, reason: not valid java name */
        public static Cif m36756do(Lock lock) {
            lock.lock();
            return new Cif(lock, true);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (!this.f32964if) {
                throw new IllegalStateException("mLock isn't locked.");
            }
            this.f32964if = false;
            this.f32963do.unlock();
        }
    }

    /* renamed from: org.chromium.base.CallbackController$new, reason: invalid class name */
    public class Cnew implements Cancelable, Runnable {

        /* renamed from: do, reason: not valid java name */
        @ii0("mReadWriteLock")
        private Runnable f32965do;

        @Override // org.chromium.base.CallbackController.Cancelable
        public void cancel() {
            this.f32965do = null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif cifM36756do = Cif.m36756do(CallbackController.this.f32960if.readLock());
            try {
                Runnable runnable = this.f32965do;
                if (runnable != null) {
                    runnable.run();
                }
                if (cifM36756do != null) {
                    cifM36756do.close();
                }
            } catch (Throwable th) {
                if (cifM36756do != null) {
                    try {
                        cifM36756do.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        private Cnew(@NonNull Runnable runnable) {
            this.f32965do = runnable;
        }
    }

    @ii0("mReadWriteLock")
    /* renamed from: if, reason: not valid java name */
    private void m36752if() {
        if (this.f32959do == null) {
            throw new IllegalStateException("This CallbackController has already been destroyed.");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m36753for() {
        Cif cifM36756do = Cif.m36756do(this.f32960if.writeLock());
        try {
            m36752if();
            Iterator it = CollectionUtil.m36761goto(this.f32959do).iterator();
            while (it.hasNext()) {
                ((Cancelable) it.next()).cancel();
            }
            this.f32959do = null;
            if (cifM36756do != null) {
                cifM36756do.close();
            }
        } catch (Throwable th) {
            if (cifM36756do != null) {
                try {
                    cifM36756do.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Runnable m36754new(@NonNull Runnable runnable) {
        Cif cifM36756do = Cif.m36756do(this.f32960if.writeLock());
        try {
            m36752if();
            Cnew cnew = new Cnew(runnable);
            this.f32959do.add(new WeakReference<>(cnew));
            if (cifM36756do != null) {
                cifM36756do.close();
            }
            return cnew;
        } catch (Throwable th) {
            if (cifM36756do != null) {
                try {
                    cifM36756do.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public <T> Callback<T> m36755try(@NonNull Callback<T> callback) {
        Cif cifM36756do = Cif.m36756do(this.f32960if.writeLock());
        try {
            m36752if();
            Cfor cfor = new Cfor(callback);
            this.f32959do.add(new WeakReference<>(cfor));
            if (cifM36756do != null) {
                cifM36756do.close();
            }
            return cfor;
        } catch (Throwable th) {
            if (cifM36756do != null) {
                try {
                    cifM36756do.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
