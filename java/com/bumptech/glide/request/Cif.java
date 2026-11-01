package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* renamed from: com.bumptech.glide.request.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements RequestCoordinator, Request {

    /* renamed from: case, reason: not valid java name */
    @GuardedBy("requestLock")
    private RequestCoordinator.Cdo f10359case;

    /* renamed from: do, reason: not valid java name */
    private final Object f10360do;

    /* renamed from: for, reason: not valid java name */
    private volatile Request f10361for;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final RequestCoordinator f10362if;

    /* renamed from: new, reason: not valid java name */
    private volatile Request f10363new;

    /* renamed from: try, reason: not valid java name */
    @GuardedBy("requestLock")
    private RequestCoordinator.Cdo f10364try;

    public Cif(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.Cdo cdo = RequestCoordinator.Cdo.CLEARED;
        this.f10364try = cdo;
        this.f10359case = cdo;
        this.f10360do = obj;
        this.f10362if = requestCoordinator;
    }

    @GuardedBy("requestLock")
    /* renamed from: do, reason: not valid java name */
    private boolean m11956do(Request request) {
        return request.equals(this.f10361for) || (this.f10364try == RequestCoordinator.Cdo.FAILED && request.equals(this.f10363new));
    }

    @GuardedBy("requestLock")
    /* renamed from: for, reason: not valid java name */
    private boolean m11957for() {
        RequestCoordinator requestCoordinator = this.f10362if;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: if, reason: not valid java name */
    private boolean m11958if() {
        RequestCoordinator requestCoordinator = this.f10362if;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: new, reason: not valid java name */
    private boolean m11959new() {
        RequestCoordinator requestCoordinator = this.f10362if;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = this.f10364try;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.RUNNING;
            if (cdo != cdo2) {
                this.f10364try = cdo2;
                this.f10361for.begin();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        boolean z;
        synchronized (this.f10360do) {
            z = m11958if() && m11956do(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        boolean z;
        synchronized (this.f10360do) {
            z = m11957for() && m11956do(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        boolean z;
        synchronized (this.f10360do) {
            z = m11959new() && m11956do(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = RequestCoordinator.Cdo.CLEARED;
            this.f10364try = cdo;
            this.f10361for.clear();
            if (this.f10359case != cdo) {
                this.f10359case = cdo;
                this.f10363new.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f10360do) {
            RequestCoordinator requestCoordinator = this.f10362if;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.f10360do) {
            z = this.f10361for.isAnyResourceSet() || this.f10363new.isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = this.f10364try;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.CLEARED;
            z = cdo == cdo2 && this.f10359case == cdo2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = this.f10364try;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.SUCCESS;
            z = cdo == cdo2 || this.f10359case == cdo2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) request;
        return this.f10361for.isEquivalentTo(cif.f10361for) && this.f10363new.isEquivalentTo(cif.f10363new);
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = this.f10364try;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.RUNNING;
            z = cdo == cdo2 || this.f10359case == cdo2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        synchronized (this.f10360do) {
            if (request.equals(this.f10363new)) {
                this.f10359case = RequestCoordinator.Cdo.FAILED;
                RequestCoordinator requestCoordinator = this.f10362if;
                if (requestCoordinator != null) {
                    requestCoordinator.onRequestFailed(this);
                }
                return;
            }
            this.f10364try = RequestCoordinator.Cdo.FAILED;
            RequestCoordinator.Cdo cdo = this.f10359case;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.RUNNING;
            if (cdo != cdo2) {
                this.f10359case = cdo2;
                this.f10363new.begin();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        synchronized (this.f10360do) {
            if (request.equals(this.f10361for)) {
                this.f10364try = RequestCoordinator.Cdo.SUCCESS;
            } else if (request.equals(this.f10363new)) {
                this.f10359case = RequestCoordinator.Cdo.SUCCESS;
            }
            RequestCoordinator requestCoordinator = this.f10362if;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestSuccess(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f10360do) {
            RequestCoordinator.Cdo cdo = this.f10364try;
            RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.RUNNING;
            if (cdo == cdo2) {
                this.f10364try = RequestCoordinator.Cdo.PAUSED;
                this.f10361for.pause();
            }
            if (this.f10359case == cdo2) {
                this.f10359case = RequestCoordinator.Cdo.PAUSED;
                this.f10363new.pause();
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m11960try(Request request, Request request2) {
        this.f10361for = request;
        this.f10363new = request2;
    }
}
