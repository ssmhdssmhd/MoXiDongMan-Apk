package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.io.Serializable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.util.break, reason: invalid class name */
/* loaded from: classes3.dex */
public enum Cbreak {
    COMPLETE;

    /* renamed from: io.reactivex.internal.util.break$do, reason: invalid class name */
    public static final class Cdo implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;
        public final Disposable upstream;

        public Cdo(Disposable disposable) {
            this.upstream = disposable;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.upstream + "]";
        }
    }

    /* renamed from: io.reactivex.internal.util.break$for, reason: invalid class name */
    public static final class Cfor implements Serializable {
        private static final long serialVersionUID = -1322257508628817540L;
        public final Subscription upstream;

        public Cfor(Subscription subscription) {
            this.upstream = subscription;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.upstream + "]";
        }
    }

    /* renamed from: io.reactivex.internal.util.break$if, reason: invalid class name */
    public static final class Cif implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;
        public final Throwable e;

        public Cif(Throwable th) {
            this.e = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cif) {
                return io.reactivex.internal.functions.Cif.m29469for(this.e, ((Cif) obj).e);
            }
            return false;
        }

        public int hashCode() {
            return this.e.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.e + "]";
        }
    }

    public static <T> boolean accept(Object obj, Subscriber<? super T> subscriber) {
        if (obj == COMPLETE) {
            subscriber.onComplete();
            return true;
        }
        if (obj instanceof Cif) {
            subscriber.onError(((Cif) obj).e);
            return true;
        }
        subscriber.onNext(obj);
        return false;
    }

    public static <T> boolean acceptFull(Object obj, Subscriber<? super T> subscriber) {
        if (obj == COMPLETE) {
            subscriber.onComplete();
            return true;
        }
        if (obj instanceof Cif) {
            subscriber.onError(((Cif) obj).e);
            return true;
        }
        if (obj instanceof Cfor) {
            subscriber.onSubscribe(((Cfor) obj).upstream);
            return false;
        }
        subscriber.onNext(obj);
        return false;
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(Disposable disposable) {
        return new Cdo(disposable);
    }

    public static Object error(Throwable th) {
        return new Cif(th);
    }

    public static Disposable getDisposable(Object obj) {
        return ((Cdo) obj).upstream;
    }

    public static Throwable getError(Object obj) {
        return ((Cif) obj).e;
    }

    public static Subscription getSubscription(Object obj) {
        return ((Cfor) obj).upstream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof Cdo;
    }

    public static boolean isError(Object obj) {
        return obj instanceof Cif;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof Cfor;
    }

    public static <T> Object next(T t) {
        return t;
    }

    public static Object subscription(Subscription subscription) {
        return new Cfor(subscription);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object obj, Observer<? super T> observer) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        }
        if (obj instanceof Cif) {
            observer.onError(((Cif) obj).e);
            return true;
        }
        observer.onNext(obj);
        return false;
    }

    public static <T> boolean acceptFull(Object obj, Observer<? super T> observer) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        }
        if (obj instanceof Cif) {
            observer.onError(((Cif) obj).e);
            return true;
        }
        if (obj instanceof Cdo) {
            observer.onSubscribe(((Cdo) obj).upstream);
            return false;
        }
        observer.onNext(obj);
        return false;
    }
}
