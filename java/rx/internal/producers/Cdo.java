package rx.internal.producers;

import rx.Producer;

/* renamed from: rx.internal.producers.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo implements Producer {

    /* renamed from: else, reason: not valid java name */
    public static final Producer f35662else = new C0545do();

    /* renamed from: case, reason: not valid java name */
    public Producer f35663case;

    /* renamed from: do, reason: not valid java name */
    public long f35664do;

    /* renamed from: for, reason: not valid java name */
    public boolean f35665for;

    /* renamed from: if, reason: not valid java name */
    public Producer f35666if;

    /* renamed from: new, reason: not valid java name */
    public long f35667new;

    /* renamed from: try, reason: not valid java name */
    public long f35668try;

    /* renamed from: rx.internal.producers.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0545do implements Producer {
        @Override // rx.Producer
        public void request(long j) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m38828do() {
        while (true) {
            synchronized (this) {
                long j = this.f35667new;
                long j2 = this.f35668try;
                Producer producer = this.f35663case;
                if (j == 0 && j2 == 0 && producer == null) {
                    this.f35665for = false;
                    return;
                }
                this.f35667new = 0L;
                this.f35668try = 0L;
                this.f35663case = null;
                long j3 = this.f35664do;
                if (j3 != Long.MAX_VALUE) {
                    long j4 = j3 + j;
                    if (j4 < 0 || j4 == Long.MAX_VALUE) {
                        this.f35664do = Long.MAX_VALUE;
                        j3 = Long.MAX_VALUE;
                    } else {
                        j3 = j4 - j2;
                        if (j3 < 0) {
                            throw new IllegalStateException("more produced than requested");
                        }
                        this.f35664do = j3;
                    }
                }
                if (producer == null) {
                    Producer producer2 = this.f35666if;
                    if (producer2 != null && j != 0) {
                        producer2.request(j);
                    }
                } else if (producer == f35662else) {
                    this.f35666if = null;
                } else {
                    this.f35666if = producer;
                    producer.request(j3);
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m38829for(Producer producer) {
        synchronized (this) {
            if (this.f35665for) {
                if (producer == null) {
                    producer = f35662else;
                }
                this.f35663case = producer;
                return;
            }
            this.f35665for = true;
            try {
                this.f35666if = producer;
                if (producer != null) {
                    producer.request(this.f35664do);
                }
                m38828do();
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35665for = false;
                    throw th;
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m38830if(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("n > 0 required");
        }
        synchronized (this) {
            if (this.f35665for) {
                this.f35668try += j;
                return;
            }
            this.f35665for = true;
            try {
                long j2 = this.f35664do;
                if (j2 != Long.MAX_VALUE) {
                    long j3 = j2 - j;
                    if (j3 < 0) {
                        throw new IllegalStateException("more items arrived than were requested");
                    }
                    this.f35664do = j3;
                }
                m38828do();
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35665for = false;
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
            if (this.f35665for) {
                this.f35667new += j;
                return;
            }
            this.f35665for = true;
            try {
                long j2 = this.f35664do + j;
                if (j2 < 0) {
                    j2 = Long.MAX_VALUE;
                }
                this.f35664do = j2;
                Producer producer = this.f35666if;
                if (producer != null) {
                    producer.request(j);
                }
                m38828do();
            } catch (Throwable th) {
                synchronized (this) {
                    this.f35665for = false;
                    throw th;
                }
            }
        }
    }
}
