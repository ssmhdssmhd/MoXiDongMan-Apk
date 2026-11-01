package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.NonBlockingThread;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public final class ja {
    private ja() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3754do(CountDownLatch countDownLatch, Disposable disposable) throws InterruptedException {
        if (countDownLatch.getCount() == 0) {
            return;
        }
        try {
            m3755if();
            countDownLatch.await();
        } catch (InterruptedException e) {
            disposable.dispose();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3755if() {
        if (jp1.m4030instanceof()) {
            if ((Thread.currentThread() instanceof NonBlockingThread) || jp1.j()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
