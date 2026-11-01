package rx.internal.producers;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.List;
import rx.Observer;
import rx.Producer;

/* renamed from: rx.internal.producers.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif<T> implements Producer, Observer<T> {

    /* renamed from: break, reason: not valid java name */
    public static final Producer f35669break = new Cdo();

    /* renamed from: case, reason: not valid java name */
    public long f35670case;

    /* renamed from: do, reason: not valid java name */
    public final y22<? super T> f35671do;

    /* renamed from: else, reason: not valid java name */
    public Producer f35672else;

    /* renamed from: for, reason: not valid java name */
    public List<T> f35673for;

    /* renamed from: goto, reason: not valid java name */
    public Object f35674goto;

    /* renamed from: if, reason: not valid java name */
    public boolean f35675if;

    /* renamed from: new, reason: not valid java name */
    public Producer f35676new;

    /* renamed from: this, reason: not valid java name */
    public volatile boolean f35677this;

    /* renamed from: try, reason: not valid java name */
    public long f35678try;

    /* renamed from: rx.internal.producers.if$do, reason: invalid class name */
    public static class Cdo implements Producer {
        @Override // rx.Producer
        public void request(long j) {
        }
    }

    public Cif(y22<? super T> y22Var) {
        this.f35671do = y22Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0009, code lost:
    
        continue;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m38831do() {
        long j;
        Producer producer;
        Object obj;
        List<T> list;
        boolean z;
        boolean z2;
        long size;
        y22<? super T> y22Var = this.f35671do;
        Producer producer2 = null;
        long jM8255do = 0;
        while (true) {
            synchronized (this) {
                j = this.f35670case;
                producer = this.f35672else;
                obj = this.f35674goto;
                list = this.f35673for;
                z = true;
                if (j == 0 && producer == null && list == null && obj == null) {
                    this.f35675if = false;
                    z2 = true;
                } else {
                    this.f35670case = 0L;
                    this.f35672else = null;
                    this.f35673for = null;
                    this.f35674goto = null;
                    z2 = false;
                }
            }
            if (z2) {
                if (jM8255do == 0 || producer2 == null) {
                    return;
                }
                producer2.request(jM8255do);
                return;
            }
            if (list != null && !list.isEmpty()) {
                z = false;
            }
            if (obj != null) {
                if (obj != Boolean.TRUE) {
                    y22Var.onError((Throwable) obj);
                    return;
                } else if (z) {
                    y22Var.onCompleted();
                    return;
                }
            }
            if (list != null) {
                for (T t : list) {
                    if (y22Var.isUnsubscribed()) {
                        return;
                    }
                    if (this.f35677this) {
                        break;
                    }
                    try {
                        y22Var.onNext(t);
                    } catch (Throwable th) {
                        s80.m7300this(th, y22Var, t);
                        return;
                    }
                }
                size = list.size() + 0;
            } else {
                size = 0;
            }
            long j2 = this.f35678try;
            if (j2 != Long.MAX_VALUE) {
                if (j != 0) {
                    j2 += j;
                    if (j2 < 0) {
                        j2 = Long.MAX_VALUE;
                    }
                }
                if (size != 0 && j2 != Long.MAX_VALUE) {
                    j2 -= size;
                    if (j2 < 0) {
                        throw new IllegalStateException("More produced than requested");
                    }
                }
                this.f35678try = j2;
            }
            if (producer == null) {
                producer = this.f35676new;
                if (producer != null && j != 0) {
                    jM8255do = u6.m8255do(jM8255do, j);
                    producer2 = producer;
                }
            } else if (producer == f35669break) {
                this.f35676new = null;
            } else {
                this.f35676new = producer;
                if (j2 != 0) {
                    jM8255do = u6.m8255do(jM8255do, j2);
                    producer2 = producer;
                }
            }
        }
    }

    @Override // rx.Observer
    public void onCompleted() {
        synchronized (this) {
            if (this.f35675if) {
                this.f35674goto = Boolean.TRUE;
            } else {
                this.f35675if = true;
                this.f35671do.onCompleted();
            }
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        boolean z;
        synchronized (this) {
            if (this.f35675if) {
                this.f35674goto = th;
                z = false;
            } else {
                this.f35675if = true;
                z = true;
            }
        }
        if (z) {
            this.f35671do.onError(th);
        } else {
            this.f35677this = true;
        }
    }

    @Override // rx.Observer
    public void onNext(T t) {
        synchronized (this) {
            if (this.f35675if) {
                List arrayList = this.f35673for;
                if (arrayList == null) {
                    arrayList = new ArrayList(4);
                    this.f35673for = arrayList;
                }
                arrayList.add(t);
                return;
            }
            this.f35675if = true;
            try {
                this.f35671do.onNext(t);
                long j = this.f35678try;
                if (j != Long.MAX_VALUE) {
                    this.f35678try = j - 1;
                }
                m38831do();
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35675if = false;
                    throw th;
                }
            }
        }
    }

    @Override // rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j == 0) {
            return;
        }
        synchronized (this) {
            if (this.f35675if) {
                this.f35670case += j;
                return;
            }
            this.f35675if = true;
            Producer producer = this.f35676new;
            try {
                long j2 = this.f35678try + j;
                if (j2 < 0) {
                    j2 = Long.MAX_VALUE;
                }
                this.f35678try = j2;
                m38831do();
                if (producer != null) {
                    producer.request(j);
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35675if = false;
                    throw th;
                }
            }
        }
    }

    public void setProducer(Producer producer) {
        synchronized (this) {
            if (this.f35675if) {
                if (producer == null) {
                    producer = f35669break;
                }
                this.f35672else = producer;
                return;
            }
            this.f35675if = true;
            this.f35676new = producer;
            long j = this.f35678try;
            try {
                m38831do();
                if (producer == null || j == 0) {
                    return;
                }
                producer.request(j);
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35675if = false;
                    throw th;
                }
            }
        }
    }
}
