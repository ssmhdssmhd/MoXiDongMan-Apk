package com.uber.autodispose;

import android.support.v4.fy0;
import android.support.v4.jz1;
import android.support.v4.m41;
import android.support.v4.np;
import android.support.v4.ub1;
import android.support.v4.wg1;
import androidx.exifinterface.media.ExifInterface;
import io.reactivex.Cfor;
import io.reactivex.Cnew;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@wg1
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\nH\u0016J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\fH\u0016J\f\u0010\u0005\u001a\u00020\u000f*\u00020\u000eH\u0016¨\u0006\u0013"}, d2 = {"Lcom/uber/autodispose/switch;", "Lcom/uber/autodispose/AutoDisposeContext;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/ub1;", "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;", "autoDispose", "Lio/reactivex/for;", "Lcom/uber/autodispose/FlowableSubscribeProxy;", "Lio/reactivex/new;", "Lcom/uber/autodispose/ObservableSubscribeProxy;", "Landroid/support/v4/jz1;", "Lcom/uber/autodispose/SingleSubscribeProxy;", "Landroid/support/v4/fy0;", "Lcom/uber/autodispose/MaybeSubscribeProxy;", "Landroid/support/v4/np;", "Lcom/uber/autodispose/CompletableSubscribeProxy;", "scope", "<init>", "(Landroid/support/v4/np;)V", "autodispose"}, k = 1, mv = {1, 4, 0})
/* renamed from: com.uber.autodispose.switch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cswitch implements AutoDisposeContext {

    /* renamed from: do, reason: not valid java name */
    private final np f20801do;

    public Cswitch(@m41 np scope) {
        Csuper.m30705while(scope, "scope");
        this.f20801do = scope;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public <T> ParallelFlowableSubscribeProxy<T> autoDispose(@m41 ub1<T> autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objM8328do = autoDispose.m8328do(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public <T> FlowableSubscribeProxy<T> autoDispose(@m41 Cfor<T> autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objM29378case = autoDispose.m29378case(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public <T> ObservableSubscribeProxy<T> autoDispose(@m41 Cnew<T> autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objAs = autoDispose.as(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ObservableSubscribeProxy) objAs;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public <T> SingleSubscribeProxy<T> autoDispose(@m41 jz1<T> autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objM4155new = autoDispose.m4155new(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public <T> MaybeSubscribeProxy<T> autoDispose(@m41 fy0<T> autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objM2477new = autoDispose.m2477new(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @Override // com.uber.autodispose.AutoDisposeContext
    @m41
    public CompletableSubscribeProxy autoDispose(@m41 np autoDispose) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Object objM5329this = autoDispose.m5329this(Cnew.m24631if(this.f20801do));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.autoDisposable<Any>(scope))");
        return (CompletableSubscribeProxy) objM5329this;
    }
}
