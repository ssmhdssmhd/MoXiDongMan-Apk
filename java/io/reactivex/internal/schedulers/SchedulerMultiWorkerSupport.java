package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import io.reactivex.Ctry;

/* loaded from: classes3.dex */
public interface SchedulerMultiWorkerSupport {

    public interface WorkerCallback {
        void onWorker(int i, @b41 Ctry.Cfor cfor);
    }

    void createWorkers(int i, @b41 WorkerCallback workerCallback);
}
