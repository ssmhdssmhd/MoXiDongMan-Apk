package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* renamed from: com.bumptech.glide.request.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry implements RequestCoordinator, Request {

    /* renamed from: case, reason: not valid java name */
    @GuardedBy("requestLock")
    private RequestCoordinator.Cdo f10456case;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final RequestCoordinator f10457do;

    /* renamed from: else, reason: not valid java name */
    @GuardedBy("requestLock")
    private boolean f10458else;

    /* renamed from: for, reason: not valid java name */
    private volatile Request f10459for;

    /* renamed from: if, reason: not valid java name */
    private final Object f10460if;

    /* renamed from: new, reason: not valid java name */
    private volatile Request f10461new;

    /* renamed from: try, reason: not valid java name */
    @GuardedBy("requestLock")
    private RequestCoordinator.Cdo f10462try;

    public Ctry(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.Cdo cdo = RequestCoordinator.Cdo.CLEARED;
        this.f10462try = cdo;
        this.f10456case = cdo;
        this.f10460if = obj;
        this.f10457do = requestCoordinator;
    }

    @GuardedBy("requestLock")
    /* renamed from: do, reason: not valid java name */
    private boolean m12027do() {
        RequestCoordinator requestCoordinator = this.f10457do;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: for, reason: not valid java name */
    private boolean m12028for() {
        RequestCoordinator requestCoordinator = this.f10457do;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: if, reason: not valid java name */
    private boolean m12029if() {
        RequestCoordinator requestCoordinator = this.f10457do;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f10460if) {
            this.f10458else = true;
            try {
                if (this.f10462try != RequestCoordinator.Cdo.SUCCESS) {
                    RequestCoordinator.Cdo cdo = this.f10456case;
                    RequestCoordinator.Cdo cdo2 = RequestCoordinator.Cdo.RUNNING;
                    if (cdo != cdo2) {
                        this.f10456case = cdo2;
                        this.f10461new.begin();
                    }
                }
                if (this.f10458else) {
                    RequestCoordinator.Cdo cdo3 = this.f10462try;
                    RequestCoordinator.Cdo cdo4 = RequestCoordinator.Cdo.RUNNING;
                    if (cdo3 != cdo4) {
                        this.f10462try = cdo4;
                        this.f10459for.begin();
                    }
                }
            } finally {
                this.f10458else = false;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        boolean z;
        synchronized (this.f10460if) {
            z = m12027do() && request.equals(this.f10459for) && this.f10462try != RequestCoordinator.Cdo.PAUSED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        boolean z;
        synchronized (this.f10460if) {
            z = m12029if() && request.equals(this.f10459for) && !isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        boolean z;
        synchronized (this.f10460if) {
            z = m12028for() && (request.equals(this.f10459for) || this.f10462try != RequestCoordinator.Cdo.SUCCESS);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f10460if) {
            this.f10458else = false;
            RequestCoordinator.Cdo cdo = RequestCoordinator.Cdo.CLEARED;
            this.f10462try = cdo;
            this.f10456case = cdo;
            this.f10461new.clear();
            this.f10459for.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f10460if) {
            RequestCoordinator requestCoordinator = this.f10457do;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.f10460if) {
            z = this.f10461new.isAnyResourceSet() || this.f10459for.isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f10460if) {
            z = this.f10462try == RequestCoordinator.Cdo.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f10460if) {
            z = this.f10462try == RequestCoordinator.Cdo.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof Ctry)) {
            return false;
        }
        Ctry ctry = (Ctry) request;
        if (this.f10459for == null) {
            if (ctry.f10459for != null) {
                return false;
            }
        } else if (!this.f10459for.isEquivalentTo(ctry.f10459for)) {
            return false;
        }
        if (this.f10461new == null) {
            if (ctry.f10461new != null) {
                return false;
            }
        } else if (!this.f10461new.isEquivalentTo(ctry.f10461new)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f10460if) {
            z = this.f10462try == RequestCoordinator.Cdo.RUNNING;
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public void m12030new(Request request, Request request2) {
        this.f10459for = request;
        this.f10461new = request2;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        synchronized (this.f10460if) {
            if (!request.equals(this.f10459for)) {
                this.f10456case = RequestCoordinator.Cdo.FAILED;
                return;
            }
            this.f10462try = RequestCoordinator.Cdo.FAILED;
            RequestCoordinator requestCoordinator = this.f10457do;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestFailed(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        synchronized (this.f10460if) {
            if (request.equals(this.f10461new)) {
                this.f10456case = RequestCoordinator.Cdo.SUCCESS;
                return;
            }
            this.f10462try = RequestCoordinator.Cdo.SUCCESS;
            RequestCoordinator requestCoordinator = this.f10457do;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestSuccess(this);
            }
            if (!this.f10456case.isComplete()) {
                this.f10461new.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f10460if) {
            if (!this.f10456case.isComplete()) {
                this.f10456case = RequestCoordinator.Cdo.PAUSED;
                this.f10461new.pause();
            }
            if (!this.f10462try.isComplete()) {
                this.f10462try = RequestCoordinator.Cdo.PAUSED;
                this.f10459for.pause();
            }
        }
    }
}
