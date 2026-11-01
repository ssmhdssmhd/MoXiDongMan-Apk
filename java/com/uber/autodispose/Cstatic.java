package com.uber.autodispose;

import android.support.v4.an1;
import android.support.v4.fy0;
import android.support.v4.gl;
import android.support.v4.jz1;
import android.support.v4.m41;
import android.support.v4.np;
import android.support.v4.ub1;
import android.support.v4.ub2;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.d;
import io.reactivex.Cnew;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@wp0(name = "KotlinExtensions")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000h\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a'\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0014\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a'\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a\u0015\u0010$\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a\u0015\u0010%\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a'\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0087\b\u001a*\u0010-\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u001a2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020*0(¢\u0006\u0002\b+H\u0086\b\u001a*\u0010/\u001a\u00020*2\u0006\u0010.\u001a\u00020\u00022\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020*0(¢\u0006\u0002\b+H\u0086\b¨\u00060"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/for;", "Landroid/support/v4/np;", "scope", "Lcom/uber/autodispose/FlowableSubscribeProxy;", "for", "super", "Lio/reactivex/new;", "Lcom/uber/autodispose/ObservableSubscribeProxy;", "else", "native", "Landroid/support/v4/jz1;", "Lcom/uber/autodispose/SingleSubscribeProxy;", "catch", "switch", "Landroid/support/v4/fy0;", "Lcom/uber/autodispose/MaybeSubscribeProxy;", "try", "while", "Lcom/uber/autodispose/CompletableSubscribeProxy;", "do", "const", "Landroid/support/v4/ub1;", "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;", "this", "return", "Lcom/uber/autodispose/ScopeProvider;", d.M, "new", "throw", "goto", "public", "class", "throws", "case", "import", "if", "final", "break", "static", "Lkotlin/Function1;", "Lcom/uber/autodispose/AutoDisposeContext;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "body", "extends", "completableScope", "default", "autodispose"}, k = 2, mv = {1, 4, 0})
/* renamed from: com.uber.autodispose.static, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cstatic {
    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: break, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24648break(@m41 ub1<T> autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objM8328do = autoDisposable.m8328do(Cnew.m24630do(provider));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: case, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24649case(@m41 fy0<T> autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objM2477new = autoDisposable.m2477new(Cnew.m24630do(provider));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: catch, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24650catch(@m41 jz1<T> autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objM4155new = autoDisposable.m4155new(Cnew.m24631if(scope));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: class, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24651class(@m41 jz1<T> autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objM4155new = autoDisposable.m4155new(Cnew.m24630do(provider));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @gl
    /* renamed from: const, reason: not valid java name */
    public static final CompletableSubscribeProxy m24652const(@m41 np autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objM5329this = autoDispose.m5329this(Cnew.m24631if(scope));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.autoDisposable<Any>(scope))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    /* renamed from: default, reason: not valid java name */
    public static final void m24653default(@m41 np completableScope, @m41 Function1<? super AutoDisposeContext, ub2> body) {
        Csuper.m30705while(completableScope, "completableScope");
        Csuper.m30705while(body, "body");
        body.invoke(new Cswitch(completableScope));
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: do, reason: not valid java name */
    public static final CompletableSubscribeProxy m24654do(@m41 np autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objM5329this = autoDisposable.m5329this(Cnew.m24631if(scope));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.autoDisposable<Any>(scope))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: else, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24655else(@m41 Cnew<T> autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objAs = autoDisposable.as(Cnew.m24631if(scope));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ObservableSubscribeProxy) objAs;
    }

    /* renamed from: extends, reason: not valid java name */
    public static final void m24656extends(@m41 ScopeProvider scope, @m41 Function1<? super AutoDisposeContext, ub2> body) {
        Csuper.m30705while(scope, "scope");
        Csuper.m30705while(body, "body");
        np npVarM24676if = Cthrows.m24676if(scope);
        Csuper.m30681goto(npVarM24676if, "completableOf(scope)");
        body.invoke(new Cswitch(npVarM24676if));
    }

    @m41
    @gl
    /* renamed from: final, reason: not valid java name */
    public static final CompletableSubscribeProxy m24657final(@m41 np autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objM5329this = autoDispose.m5329this(Cnew.m24630do(provider));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…isposable<Any>(provider))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: for, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24658for(@m41 io.reactivex.Cfor<T> autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objM29378case = autoDisposable.m29378case(Cnew.m24631if(scope));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: goto, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24659goto(@m41 Cnew<T> autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objAs = autoDisposable.as(Cnew.m24630do(provider));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (ObservableSubscribeProxy) objAs;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: if, reason: not valid java name */
    public static final CompletableSubscribeProxy m24660if(@m41 np autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objM5329this = autoDisposable.m5329this(Cnew.m24630do(provider));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…isposable<Any>(provider))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    @m41
    @gl
    /* renamed from: import, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24661import(@m41 fy0<T> autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objM2477new = autoDispose.m2477new(Cnew.m24630do(provider));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @m41
    @gl
    /* renamed from: native, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24662native(@m41 Cnew<T> autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objAs = autoDispose.as(Cnew.m24631if(scope));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ObservableSubscribeProxy) objAs;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(provider)", imports = {}))
    @gl
    /* renamed from: new, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24663new(@m41 io.reactivex.Cfor<T> autoDisposable, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(provider, "provider");
        Object objM29378case = autoDisposable.m29378case(Cnew.m24630do(provider));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @gl
    /* renamed from: public, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m24664public(@m41 Cnew<T> autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objAs = autoDispose.as(Cnew.m24630do(provider));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (ObservableSubscribeProxy) objAs;
    }

    @m41
    @gl
    /* renamed from: return, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24665return(@m41 ub1<T> autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objM8328do = autoDispose.m8328do(Cnew.m24631if(scope));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @m41
    @gl
    /* renamed from: static, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24666static(@m41 ub1<T> autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objM8328do = autoDispose.m8328do(Cnew.m24630do(provider));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @m41
    @gl
    /* renamed from: super, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24667super(@m41 io.reactivex.Cfor<T> autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objM29378case = autoDispose.m29378case(Cnew.m24631if(scope));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @gl
    /* renamed from: switch, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24668switch(@m41 jz1<T> autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objM4155new = autoDispose.m4155new(Cnew.m24631if(scope));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: this, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m24669this(@m41 ub1<T> autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objM8328do = autoDisposable.m8328do(Cnew.m24631if(scope));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @m41
    @gl
    /* renamed from: throw, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m24670throw(@m41 io.reactivex.Cfor<T> autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objM29378case = autoDispose.m29378case(Cnew.m24630do(provider));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @gl
    /* renamed from: throws, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m24671throws(@m41 jz1<T> autoDispose, @m41 ScopeProvider provider) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(provider, "provider");
        Object objM4155new = autoDispose.m4155new(Cnew.m24630do(provider));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.autoDisposable(provider))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose`", replaceWith = @an1(expression = "autoDispose(scope)", imports = {}))
    @gl
    /* renamed from: try, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24672try(@m41 fy0<T> autoDisposable, @m41 np scope) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(scope, "scope");
        Object objM2477new = autoDisposable.m2477new(Cnew.m24631if(scope));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @m41
    @gl
    /* renamed from: while, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m24673while(@m41 fy0<T> autoDispose, @m41 np scope) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(scope, "scope");
        Object objM2477new = autoDispose.m2477new(Cnew.m24631if(scope));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.autoDisposable(scope))");
        return (MaybeSubscribeProxy) objM2477new;
    }
}
