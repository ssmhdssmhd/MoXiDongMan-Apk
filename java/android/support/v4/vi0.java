package android.support.v4;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class vi0 {

    /* renamed from: android.support.v4.vi0$do, reason: invalid class name */
    public static class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        public WeakReference<Handler.Callback> f7222do;

        public Cdo(Handler.Callback callback) {
            this.f7222do = new WeakReference<>(callback);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Handler.Callback> weakReference = this.f7222do;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f7222do.get().handleMessage(message);
        }
    }

    private vi0() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }
}
