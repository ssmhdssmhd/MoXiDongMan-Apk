package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;

@wp0(name = "LocksKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a8\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a8\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0007\u0010\b\u001a8\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\t\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/locks/Lock;", "Lkotlin/Function0;", "action", "if", "(Ljava/util/concurrent/locks/Lock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "do", "(Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "for", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class qv0 {
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final <T> T m6668do(ReentrantReadWriteLock reentrantReadWriteLock, Function0<? extends T> function0) {
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        lock.lock();
        try {
            return function0.invoke();
        } finally {
            tm0.m7996new(1);
            lock.unlock();
            tm0.m7994for(1);
        }
    }

    @um0
    /* renamed from: for, reason: not valid java name */
    private static final <T> T m6669for(ReentrantReadWriteLock reentrantReadWriteLock, Function0<? extends T> function0) {
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            return function0.invoke();
        } finally {
            tm0.m7996new(1);
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            tm0.m7994for(1);
        }
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <T> T m6670if(Lock lock, Function0<? extends T> function0) {
        lock.lock();
        try {
            return function0.invoke();
        } finally {
            tm0.m7996new(1);
            lock.unlock();
            tm0.m7994for(1);
        }
    }
}
