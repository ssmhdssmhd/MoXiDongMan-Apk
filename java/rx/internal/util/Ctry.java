package rx.internal.util;

import android.support.v4.yd1;
import android.support.v4.zz0;
import java.util.Queue;
import rx.Observer;
import rx.Subscription;
import rx.internal.operators.Creturn;
import rx.internal.util.atomic.Cnew;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Csuper;
import rx.internal.util.unsafe.Cswitch;

/* renamed from: rx.internal.util.try, reason: invalid class name */
/* loaded from: classes4.dex */
public class Ctry implements Subscription {

    /* renamed from: new, reason: not valid java name */
    public static final int f35868new;

    /* renamed from: do, reason: not valid java name */
    private Queue<Object> f35869do;

    /* renamed from: for, reason: not valid java name */
    public volatile Object f35870for;

    /* renamed from: if, reason: not valid java name */
    private final int f35871if;

    static {
        int i = yd1.m9814if() ? 16 : 128;
        String property = System.getProperty("rx.ring-buffer.size");
        if (property != null) {
            try {
                i = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                System.err.println("Failed to set 'rx.buffer.size' with value " + property + " => " + e.getMessage());
            }
        }
        f35868new = i;
    }

    private Ctry(Queue<Object> queue, int i) {
        this.f35869do = queue;
        this.f35871if = i;
    }

    /* renamed from: case, reason: not valid java name */
    public static Ctry m38931case() {
        return Cimplements.m38984case() ? new Ctry(true, f35868new) : new Ctry();
    }

    /* renamed from: else, reason: not valid java name */
    public static Ctry m38932else() {
        return Cimplements.m38984case() ? new Ctry(false, f35868new) : new Ctry();
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m38933break() {
        Queue<Object> queue = this.f35869do;
        return queue == null || queue.isEmpty();
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m38934catch(Object obj) {
        return Creturn.m38685else(obj);
    }

    /* renamed from: class, reason: not valid java name */
    public void m38935class() {
        if (this.f35870for == null) {
            this.f35870for = Creturn.m38688if();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m38936const(Throwable th) {
        if (this.f35870for == null) {
            this.f35870for = Creturn.m38686for(th);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m38937do(Object obj, Observer observer) {
        return Creturn.m38684do(observer, obj);
    }

    /* renamed from: final, reason: not valid java name */
    public void m38938final(Object obj) throws zz0 {
        boolean z;
        boolean z2;
        synchronized (this) {
            Queue<Object> queue = this.f35869do;
            z = true;
            z2 = false;
            if (queue != null) {
                z2 = !queue.offer(Creturn.m38682break(obj));
                z = false;
            }
        }
        if (z) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        }
        if (z2) {
            throw new zz0();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public int m38939for() {
        return this.f35871if - m38946try();
    }

    /* renamed from: goto, reason: not valid java name */
    public Object m38940goto(Object obj) {
        return Creturn.m38691try(obj);
    }

    /* renamed from: if, reason: not valid java name */
    public Throwable m38941if(Object obj) {
        return Creturn.m38689new(obj);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f35869do == null;
    }

    /* renamed from: new, reason: not valid java name */
    public int m38942new() {
        return this.f35871if;
    }

    /* renamed from: super, reason: not valid java name */
    public Object m38943super() {
        synchronized (this) {
            Queue<Object> queue = this.f35869do;
            if (queue == null) {
                return null;
            }
            Object objPeek = queue.peek();
            Object obj = this.f35870for;
            if (objPeek == null && obj != null && queue.peek() == null) {
                objPeek = obj;
            }
            return objPeek;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m38944this(Object obj) {
        return Creturn.m38683case(obj);
    }

    /* renamed from: throw, reason: not valid java name */
    public Object m38945throw() {
        synchronized (this) {
            Queue<Object> queue = this.f35869do;
            if (queue == null) {
                return null;
            }
            Object objPoll = queue.poll();
            Object obj = this.f35870for;
            if (objPoll == null && obj != null && queue.peek() == null) {
                this.f35870for = null;
                objPoll = obj;
            }
            return objPoll;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m38946try() {
        Queue<Object> queue = this.f35869do;
        if (queue == null) {
            return 0;
        }
        return queue.size();
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        m38947while();
    }

    /* renamed from: while, reason: not valid java name */
    public synchronized void m38947while() {
    }

    private Ctry(boolean z, int i) {
        this.f35869do = z ? new Csuper<>(i) : new Cswitch<>(i);
        this.f35871if = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Ctry() {
        int i = f35868new;
        this(new Cnew(i), i);
    }
}
