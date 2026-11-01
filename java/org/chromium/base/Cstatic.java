package org.chromium.base;

import android.os.Handler;
import android.os.Looper;
import android.support.v4.ec2;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.chromium.base.ThreadUtils;

/* renamed from: org.chromium.base.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic {

    /* renamed from: do, reason: not valid java name */
    private final ThreadUtils.Cdo f33216do;

    /* renamed from: for, reason: not valid java name */
    private HashMap<ec2<?>, WeakReference<? extends UnownedUserData>> f33217for;

    /* renamed from: if, reason: not valid java name */
    private Handler f33218if;

    public Cstatic() {
        this(new Handler(m37189goto()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m37187case(UnownedUserData unownedUserData) {
        unownedUserData.onDetachedFromHost(this);
    }

    /* renamed from: goto, reason: not valid java name */
    private static Looper m37189goto() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            return looperMyLooper;
        }
        throw new IllegalStateException();
    }

    /* renamed from: else, reason: not valid java name */
    public <T extends UnownedUserData> void m37190else(@NonNull ec2<T> ec2Var) {
        final UnownedUserData unownedUserData;
        this.f33216do.m36951if();
        WeakReference<? extends UnownedUserData> weakReferenceRemove = this.f33217for.remove(ec2Var);
        if (weakReferenceRemove == null || (unownedUserData = weakReferenceRemove.get()) == null || !unownedUserData.informOnDetachmentFromHost()) {
            return;
        }
        this.f33218if.post(new Runnable() { // from class: android.support.v4.dc2
            @Override // java.lang.Runnable
            public final void run() {
                this.f988do.m37187case(unownedUserData);
            }
        });
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public <T extends UnownedUserData> T m37191for(@NonNull ec2<T> ec2Var) {
        this.f33216do.m36951if();
        WeakReference<? extends UnownedUserData> weakReference = this.f33217for.get(ec2Var);
        if (weakReference == null) {
            return null;
        }
        UnownedUserData unownedUserData = weakReference.get();
        if (unownedUserData != null) {
            return ec2Var.m1791case().cast(unownedUserData);
        }
        ec2Var.m1796new(this);
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public void m37192if() {
        this.f33216do.m36949do();
        if (m37195try()) {
            return;
        }
        Iterator it = new HashSet(this.f33217for.keySet()).iterator();
        while (it.hasNext()) {
            ((ec2) it.next()).m1796new(this);
        }
        this.f33217for = null;
        this.f33218if = null;
        this.f33216do.m36950for();
    }

    @VisibleForTesting(otherwise = 5)
    /* renamed from: new, reason: not valid java name */
    public int m37193new() {
        this.f33216do.m36951if();
        return this.f33217for.size();
    }

    /* renamed from: this, reason: not valid java name */
    public <T extends UnownedUserData> void m37194this(@NonNull ec2<T> ec2Var, @NonNull T t) {
        this.f33216do.m36951if();
        if (this.f33217for.containsKey(ec2Var) && !t.equals(m37191for(ec2Var))) {
            ec2Var.m1796new(this);
        }
        this.f33217for.put(ec2Var, new WeakReference<>(t));
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m37195try() {
        return this.f33217for == null;
    }

    @VisibleForTesting(otherwise = 2)
    public Cstatic(Handler handler) {
        this.f33216do = new ThreadUtils.Cdo();
        this.f33217for = new HashMap<>();
        this.f33218if = handler;
    }
}
