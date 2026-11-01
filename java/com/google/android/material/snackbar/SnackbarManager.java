package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class SnackbarManager {

    /* renamed from: case, reason: not valid java name */
    private static final int f12776case = 1500;

    /* renamed from: else, reason: not valid java name */
    private static final int f12777else = 2750;

    /* renamed from: goto, reason: not valid java name */
    private static SnackbarManager f12778goto;

    /* renamed from: try, reason: not valid java name */
    public static final int f12779try = 0;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private Cif f12781for;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Cif f12783new;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Object f12780do = new Object();

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Handler f12782if = new Handler(Looper.getMainLooper(), new Cdo());

    public interface Callback {
        void dismiss(int i);

        void show();
    }

    /* renamed from: com.google.android.material.snackbar.SnackbarManager$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        public Cdo() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            SnackbarManager.this.m14236new((Cif) message.obj);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.SnackbarManager$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        public final WeakReference<Callback> f12785do;

        /* renamed from: for, reason: not valid java name */
        public boolean f12786for;

        /* renamed from: if, reason: not valid java name */
        public int f12787if;

        public Cif(int i, Callback callback) {
            this.f12785do = new WeakReference<>(callback);
            this.f12787if = i;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m14239do(@Nullable Callback callback) {
            return callback != null && this.f12785do.get() == callback;
        }
    }

    private SnackbarManager() {
    }

    /* renamed from: const, reason: not valid java name */
    private void m14224const(@NonNull Cif cif) {
        int i = cif.f12787if;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? f12776case : f12777else;
        }
        this.f12782if.removeCallbacksAndMessages(cif);
        Handler handler = this.f12782if;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cif), i);
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m14225do(@NonNull Cif cif, int i) {
        Callback callback = cif.f12785do.get();
        if (callback == null) {
            return false;
        }
        this.f12782if.removeCallbacksAndMessages(cif);
        callback.dismiss(i);
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m14226else(Callback callback) {
        Cif cif = this.f12781for;
        return cif != null && cif.m14239do(callback);
    }

    /* renamed from: for, reason: not valid java name */
    public static SnackbarManager m14227for() {
        if (f12778goto == null) {
            f12778goto = new SnackbarManager();
        }
        return f12778goto;
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m14228goto(Callback callback) {
        Cif cif = this.f12783new;
        return cif != null && cif.m14239do(callback);
    }

    /* renamed from: super, reason: not valid java name */
    private void m14229super() {
        Cif cif = this.f12783new;
        if (cif != null) {
            this.f12781for = cif;
            this.f12783new = null;
            Callback callback = cif.f12785do.get();
            if (callback != null) {
                callback.show();
            } else {
                this.f12781for = null;
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m14230break(Callback callback) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                m14224const(this.f12781for);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m14231case(Callback callback) {
        boolean z;
        synchronized (this.f12780do) {
            z = m14226else(callback) || m14228goto(callback);
        }
        return z;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14232catch(Callback callback) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                Cif cif = this.f12781for;
                if (!cif.f12786for) {
                    cif.f12786for = true;
                    this.f12782if.removeCallbacksAndMessages(cif);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m14233class(Callback callback) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                Cif cif = this.f12781for;
                if (cif.f12786for) {
                    cif.f12786for = false;
                    m14224const(cif);
                }
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m14234final(int i, Callback callback) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                Cif cif = this.f12781for;
                cif.f12787if = i;
                this.f12782if.removeCallbacksAndMessages(cif);
                m14224const(this.f12781for);
                return;
            }
            if (m14228goto(callback)) {
                this.f12783new.f12787if = i;
            } else {
                this.f12783new = new Cif(i, callback);
            }
            Cif cif2 = this.f12781for;
            if (cif2 == null || !m14225do(cif2, 4)) {
                this.f12781for = null;
                m14229super();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m14235if(Callback callback, int i) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                m14225do(this.f12781for, i);
            } else if (m14228goto(callback)) {
                m14225do(this.f12783new, i);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m14236new(@NonNull Cif cif) {
        synchronized (this.f12780do) {
            if (this.f12781for == cif || this.f12783new == cif) {
                m14225do(cif, 2);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m14237this(Callback callback) {
        synchronized (this.f12780do) {
            if (m14226else(callback)) {
                this.f12781for = null;
                if (this.f12783new != null) {
                    m14229super();
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m14238try(Callback callback) {
        boolean zM14226else;
        synchronized (this.f12780do) {
            zM14226else = m14226else(callback);
        }
        return zM14226else;
    }
}
