package com.uber.autodispose.android.lifecycle;

import android.support.v4.an1;
import android.support.v4.fy0;
import android.support.v4.gl;
import android.support.v4.jz1;
import android.support.v4.m41;
import android.support.v4.np;
import android.support.v4.ub1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.uber.autodispose.CompletableSubscribeProxy;
import com.uber.autodispose.FlowableSubscribeProxy;
import com.uber.autodispose.MaybeSubscribeProxy;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.uber.autodispose.ParallelFlowableSubscribeProxy;
import com.uber.autodispose.ScopeProvider;
import com.uber.autodispose.SingleSubscribeProxy;
import com.uber.autodispose.lifecycle.CorrespondingEventsFunction;
import io.reactivex.Cnew;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a\u001b\u0010\b\u001a\u00020\u0001*\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\tH\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a\u001b\u0010\f\u001a\u00020\u0001*\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0087\b\u001a3\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00172\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00172\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u001b2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u001b2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a!\u0010!\u001a\u00020 *\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a!\u0010\"\u001a\u00020 *\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000$\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a3\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000$\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b¨\u0006'"}, d2 = {"Landroidx/lifecycle/LifecycleOwner;", "Lcom/uber/autodispose/ScopeProvider;", "package", "Landroidx/lifecycle/Lifecycle$Event;", "untilEvent", "private", "Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction;", "boundaryResolver", "abstract", "Landroidx/lifecycle/Lifecycle;", "default", "extends", "finally", ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/for;", "lifecycleOwner", "Lcom/uber/autodispose/FlowableSubscribeProxy;", "if", "final", "Lio/reactivex/new;", "Lcom/uber/autodispose/ObservableSubscribeProxy;", "new", "throw", "Landroid/support/v4/jz1;", "Lcom/uber/autodispose/SingleSubscribeProxy;", "case", "import", "Landroid/support/v4/fy0;", "Lcom/uber/autodispose/MaybeSubscribeProxy;", "for", "super", "Landroid/support/v4/np;", "Lcom/uber/autodispose/CompletableSubscribeProxy;", "do", "const", "Landroid/support/v4/ub1;", "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;", "try", "while", "autodispose-android-archcomponents_release"}, k = 2, mv = {1, 4, 0})
/* renamed from: com.uber.autodispose.android.lifecycle.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {
    @m41
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public static final ScopeProvider m24580abstract(@m41 LifecycleOwner scope, @m41 CorrespondingEventsFunction<Lifecycle.Event> boundaryResolver) {
        Csuper.m30705while(scope, "$this$scope");
        Csuper.m30705while(boundaryResolver, "boundaryResolver");
        Cdo cdoM24572else = Cdo.m24572else(scope, boundaryResolver);
        Csuper.m30681goto(cdoM24572else, "AndroidLifecycleScopePro…m(this, boundaryResolver)");
        return cdoM24572else;
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ ObservableSubscribeProxy m24581break(Cnew autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objAs = autoDisposable.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ObservableSubscribeProxy) objAs;
        }
        Object objAs2 = autoDisposable.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objAs2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ObservableSubscribeProxy) objAs2;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: case, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24582case(@m41 jz1<T> autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM4155new = autoDisposable.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (SingleSubscribeProxy) objM4155new;
        }
        Object objM4155new2 = autoDisposable.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM4155new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (SingleSubscribeProxy) objM4155new2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ ParallelFlowableSubscribeProxy m24583catch(ub1 autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM8328do = autoDisposable.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ParallelFlowableSubscribeProxy) objM8328do;
        }
        Object objM8328do2 = autoDisposable.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM8328do2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ParallelFlowableSubscribeProxy) objM8328do2;
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ SingleSubscribeProxy m24584class(jz1 autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM4155new = autoDisposable.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (SingleSubscribeProxy) objM4155new;
        }
        Object objM4155new2 = autoDisposable.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM4155new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (SingleSubscribeProxy) objM4155new2;
    }

    @m41
    @gl
    /* renamed from: const, reason: not valid java name */
    public static final CompletableSubscribeProxy m24585const(@m41 np autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM5329this = autoDispose.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (CompletableSubscribeProxy) objM5329this;
        }
        Object objM5329this2 = autoDispose.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM5329this2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (CompletableSubscribeProxy) objM5329this2;
    }

    @m41
    @gl
    /* renamed from: default, reason: not valid java name */
    public static final ScopeProvider m24586default(@m41 Lifecycle scope) {
        Csuper.m30705while(scope, "$this$scope");
        Cdo cdoM24575if = Cdo.m24575if(scope);
        Csuper.m30681goto(cdoM24575if, "AndroidLifecycleScopeProvider.from(this)");
        return cdoM24575if;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: do, reason: not valid java name */
    public static final CompletableSubscribeProxy m24587do(@m41 np autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM5329this = autoDisposable.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (CompletableSubscribeProxy) objM5329this;
        }
        Object objM5329this2 = autoDisposable.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM5329this2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (CompletableSubscribeProxy) objM5329this2;
    }

    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ CompletableSubscribeProxy m24588else(np autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM5329this = autoDisposable.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (CompletableSubscribeProxy) objM5329this;
        }
        Object objM5329this2 = autoDisposable.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM5329this2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (CompletableSubscribeProxy) objM5329this2;
    }

    @m41
    @gl
    /* renamed from: extends, reason: not valid java name */
    public static final ScopeProvider m24589extends(@m41 Lifecycle scope, @m41 Lifecycle.Event untilEvent) {
        Csuper.m30705while(scope, "$this$scope");
        Csuper.m30705while(untilEvent, "untilEvent");
        Cdo cdoM24573for = Cdo.m24573for(scope, untilEvent);
        Csuper.m30681goto(cdoM24573for, "AndroidLifecycleScopePro…om(\n    this, untilEvent)");
        return cdoM24573for;
    }

    @m41
    @gl
    /* renamed from: final, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24590final(@m41 io.reactivex.Cfor<T> autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM29378case = autoDispose.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (FlowableSubscribeProxy) objM29378case;
        }
        Object objM29378case2 = autoDispose.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM29378case2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (FlowableSubscribeProxy) objM29378case2;
    }

    @m41
    @gl
    /* renamed from: finally, reason: not valid java name */
    public static final ScopeProvider m24591finally(@m41 Lifecycle scope, @m41 CorrespondingEventsFunction<Lifecycle.Event> boundaryResolver) {
        Csuper.m30705while(scope, "$this$scope");
        Csuper.m30705while(boundaryResolver, "boundaryResolver");
        Cdo cdoM24576new = Cdo.m24576new(scope, boundaryResolver);
        Csuper.m30681goto(cdoM24576new, "AndroidLifecycleScopePro…  this, boundaryResolver)");
        return cdoM24576new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: for, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24592for(@m41 fy0<T> autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM2477new = autoDisposable.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (MaybeSubscribeProxy) objM2477new;
        }
        Object objM2477new2 = autoDisposable.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM2477new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (MaybeSubscribeProxy) objM2477new2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ FlowableSubscribeProxy m24593goto(io.reactivex.Cfor autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM29378case = autoDisposable.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (FlowableSubscribeProxy) objM29378case;
        }
        Object objM29378case2 = autoDisposable.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM29378case2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (FlowableSubscribeProxy) objM29378case2;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: if, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24594if(@m41 io.reactivex.Cfor<T> autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM29378case = autoDisposable.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (FlowableSubscribeProxy) objM29378case;
        }
        Object objM29378case2 = autoDisposable.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM29378case2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (FlowableSubscribeProxy) objM29378case2;
    }

    @m41
    @gl
    /* renamed from: import, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24595import(@m41 jz1<T> autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM4155new = autoDispose.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (SingleSubscribeProxy) objM4155new;
        }
        Object objM4155new2 = autoDispose.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM4155new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (SingleSubscribeProxy) objM4155new2;
    }

    /* renamed from: native, reason: not valid java name */
    public static /* synthetic */ CompletableSubscribeProxy m24596native(np autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM5329this = autoDispose.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (CompletableSubscribeProxy) objM5329this;
        }
        Object objM5329this2 = autoDispose.m5329this(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM5329this2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (CompletableSubscribeProxy) objM5329this2;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: new, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24597new(@m41 Cnew<T> autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objAs = autoDisposable.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ObservableSubscribeProxy) objAs;
        }
        Object objAs2 = autoDisposable.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objAs2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ObservableSubscribeProxy) objAs2;
    }

    @m41
    @gl
    /* renamed from: package, reason: not valid java name */
    public static final ScopeProvider m24598package(@m41 LifecycleOwner scope) {
        Csuper.m30705while(scope, "$this$scope");
        Cdo cdoM24577try = Cdo.m24577try(scope);
        Csuper.m30681goto(cdoM24577try, "AndroidLifecycleScopeProvider.from(this)");
        return cdoM24577try;
    }

    @m41
    @gl
    /* renamed from: private, reason: not valid java name */
    public static final ScopeProvider m24599private(@m41 LifecycleOwner scope, @m41 Lifecycle.Event untilEvent) {
        Csuper.m30705while(scope, "$this$scope");
        Csuper.m30705while(untilEvent, "untilEvent");
        Cdo cdoM24570case = Cdo.m24570case(scope, untilEvent);
        Csuper.m30681goto(cdoM24570case, "AndroidLifecycleScopePro…er.from(this, untilEvent)");
        return cdoM24570case;
    }

    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ FlowableSubscribeProxy m24600public(io.reactivex.Cfor autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM29378case = autoDispose.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (FlowableSubscribeProxy) objM29378case;
        }
        Object objM29378case2 = autoDispose.m29378case(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM29378case2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (FlowableSubscribeProxy) objM29378case2;
    }

    /* renamed from: return, reason: not valid java name */
    public static /* synthetic */ MaybeSubscribeProxy m24601return(fy0 autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM2477new = autoDispose.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (MaybeSubscribeProxy) objM2477new;
        }
        Object objM2477new2 = autoDispose.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM2477new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (MaybeSubscribeProxy) objM2477new2;
    }

    /* renamed from: static, reason: not valid java name */
    public static /* synthetic */ ObservableSubscribeProxy m24602static(Cnew autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objAs = autoDispose.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ObservableSubscribeProxy) objAs;
        }
        Object objAs2 = autoDispose.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objAs2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ObservableSubscribeProxy) objAs2;
    }

    @m41
    @gl
    /* renamed from: super, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24603super(@m41 fy0<T> autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM2477new = autoDispose.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (MaybeSubscribeProxy) objM2477new;
        }
        Object objM2477new2 = autoDispose.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM2477new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (MaybeSubscribeProxy) objM2477new2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static /* synthetic */ ParallelFlowableSubscribeProxy m24604switch(ub1 autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM8328do = autoDispose.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ParallelFlowableSubscribeProxy) objM8328do;
        }
        Object objM8328do2 = autoDispose.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM8328do2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ParallelFlowableSubscribeProxy) objM8328do2;
    }

    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ MaybeSubscribeProxy m24605this(fy0 autoDisposable, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM2477new = autoDisposable.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (MaybeSubscribeProxy) objM2477new;
        }
        Object objM2477new2 = autoDisposable.m2477new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM2477new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (MaybeSubscribeProxy) objM2477new2;
    }

    @m41
    @gl
    /* renamed from: throw, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24606throw(@m41 Cnew<T> autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objAs = autoDispose.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ObservableSubscribeProxy) objAs;
        }
        Object objAs2 = autoDispose.as(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objAs2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ObservableSubscribeProxy) objAs2;
    }

    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ SingleSubscribeProxy m24607throws(jz1 autoDispose, LifecycleOwner lifecycleOwner, Lifecycle.Event event, int i, Object obj) {
        if ((i & 2) != 0) {
            event = null;
        }
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM4155new = autoDispose.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (SingleSubscribeProxy) objM4155new;
        }
        Object objM4155new2 = autoDispose.m4155new(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM4155new2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (SingleSubscribeProxy) objM4155new2;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(lifecycleOwner, untilEvent)", imports = {}))
    @gl
    /* renamed from: try, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24608try(@m41 ub1<T> autoDisposable, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM8328do = autoDisposable.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ParallelFlowableSubscribeProxy) objM8328do;
        }
        Object objM8328do2 = autoDisposable.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM8328do2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ParallelFlowableSubscribeProxy) objM8328do2;
    }

    @m41
    @gl
    /* renamed from: while, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24609while(@m41 ub1<T> autoDispose, @m41 LifecycleOwner lifecycleOwner, @z41 Lifecycle.Event event) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(lifecycleOwner, "lifecycleOwner");
        if (event == null) {
            Object objM8328do = autoDispose.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24577try(lifecycleOwner)));
            Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…er.from(lifecycleOwner)))");
            return (ParallelFlowableSubscribeProxy) objM8328do;
        }
        Object objM8328do2 = autoDispose.m8328do(com.uber.autodispose.Cnew.m24630do(Cdo.m24570case(lifecycleOwner, event)));
        Csuper.m30681goto(objM8328do2, "this.`as`(AutoDispose.au…cycleOwner, untilEvent)))");
        return (ParallelFlowableSubscribeProxy) objM8328do2;
    }
}
