package android.support.v4;

import java.util.concurrent.CountDownLatch;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class qa {
    private qa() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6449do(CountDownLatch countDownLatch, Subscription subscription) throws InterruptedException {
        if (countDownLatch.getCount() == 0) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            subscription.unsubscribe();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
        }
    }
}
