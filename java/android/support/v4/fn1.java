package android.support.v4;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Ccase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class fn1 {

    /* renamed from: new, reason: not valid java name */
    private static final String f1908new = "RequestTracker";

    /* renamed from: for, reason: not valid java name */
    private boolean f1910for;

    /* renamed from: do, reason: not valid java name */
    private final Set<Request> f1909do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: if, reason: not valid java name */
    private final List<Request> f1911if = new ArrayList();

    /* renamed from: case, reason: not valid java name */
    public void m2366case() {
        this.f1910for = true;
        for (Request request : Ccase.m12040catch(this.f1909do)) {
            if (request.isRunning()) {
                request.pause();
                this.f1911if.add(request);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: do, reason: not valid java name */
    public void m2367do(Request request) {
        this.f1909do.add(request);
    }

    /* renamed from: else, reason: not valid java name */
    public void m2368else() {
        for (Request request : Ccase.m12040catch(this.f1909do)) {
            if (!request.isComplete() && !request.isCleared()) {
                request.clear();
                if (this.f1910for) {
                    this.f1911if.add(request);
                } else {
                    request.begin();
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m2369for() {
        Iterator it = Ccase.m12040catch(this.f1909do).iterator();
        while (it.hasNext()) {
            m2371if((Request) it.next());
        }
        this.f1911if.clear();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2370goto() {
        this.f1910for = false;
        for (Request request : Ccase.m12040catch(this.f1909do)) {
            if (!request.isComplete() && !request.isRunning()) {
                request.begin();
            }
        }
        this.f1911if.clear();
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m2371if(@Nullable Request request) {
        boolean z = true;
        if (request == null) {
            return true;
        }
        boolean zRemove = this.f1909do.remove(request);
        if (!this.f1911if.remove(request) && !zRemove) {
            z = false;
        }
        if (z) {
            request.clear();
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m2372new() {
        return this.f1910for;
    }

    /* renamed from: this, reason: not valid java name */
    public void m2373this(@NonNull Request request) {
        this.f1909do.add(request);
        if (!this.f1910for) {
            request.begin();
            return;
        }
        request.clear();
        Log.isLoggable(f1908new, 2);
        this.f1911if.add(request);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f1909do.size() + ", isPaused=" + this.f1910for + "}";
    }

    /* renamed from: try, reason: not valid java name */
    public void m2374try() {
        this.f1910for = true;
        for (Request request : Ccase.m12040catch(this.f1909do)) {
            if (request.isRunning() || request.isComplete()) {
                request.clear();
                this.f1911if.add(request);
            }
        }
    }
}
