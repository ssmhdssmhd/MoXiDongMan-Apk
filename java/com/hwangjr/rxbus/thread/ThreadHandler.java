package com.hwangjr.rxbus.thread;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public interface ThreadHandler {
    public static final ThreadHandler DEFAULT = new ThreadHandler() { // from class: com.hwangjr.rxbus.thread.ThreadHandler.1
        private Executor executor;
        private Handler handler;

        @Override // com.hwangjr.rxbus.thread.ThreadHandler
        public Executor getExecutor() {
            if (this.executor == null) {
                this.executor = Executors.newCachedThreadPool();
            }
            return this.executor;
        }

        @Override // com.hwangjr.rxbus.thread.ThreadHandler
        public Handler getHandler() {
            if (this.handler == null) {
                this.handler = new Handler(Looper.getMainLooper());
            }
            return this.handler;
        }
    };

    Executor getExecutor();

    Handler getHandler();
}
