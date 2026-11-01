package android.support.v4;

import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.uber.autodispose.CompletableSubscribeProxy;
import com.uber.autodispose.FlowableSubscribeProxy;
import com.uber.autodispose.MaybeSubscribeProxy;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.uber.autodispose.ParallelFlowableSubscribeProxy;
import com.uber.autodispose.ScopeProvider;
import com.uber.autodispose.SingleSubscribeProxy;
import com.uber.autodispose.android.Cif;
import io.reactivex.Cnew;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a'\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0017\u001a\u00020\u0016*\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0018\u001a\u00020\u0016*\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00192\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b\u001a'\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00192\u0006\u0010\u0005\u001a\u00020\u0000H\u0087\b¨\u0006\u001d"}, d2 = {"Landroid/view/View;", "Lcom/uber/autodispose/ScopeProvider;", "const", ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/for;", "view", "Lcom/uber/autodispose/FlowableSubscribeProxy;", "if", "goto", "Lio/reactivex/new;", "Lcom/uber/autodispose/ObservableSubscribeProxy;", "new", "break", "Landroid/support/v4/jz1;", "Lcom/uber/autodispose/SingleSubscribeProxy;", "case", "class", "Landroid/support/v4/fy0;", "Lcom/uber/autodispose/MaybeSubscribeProxy;", "for", "this", "Landroid/support/v4/np;", "Lcom/uber/autodispose/CompletableSubscribeProxy;", "do", "else", "Landroid/support/v4/ub1;", "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;", "try", "catch", "autodispose-android_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class pr0 {
    @m41
    @gl
    /* renamed from: break, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m6196break(@m41 Cnew<T> autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objAs = autoDispose.as(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (ObservableSubscribeProxy) objAs;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: case, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m6197case(@m41 jz1<T> autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objM4155new = autoDisposable.m4155new(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @gl
    /* renamed from: catch, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m6198catch(@m41 ub1<T> autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objM8328do = autoDispose.m8328do(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }

    @m41
    @gl
    /* renamed from: class, reason: not valid java name */
    public static final <T> SingleSubscribeProxy<T> m6199class(@m41 jz1<T> autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objM4155new = autoDispose.m4155new(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM4155new, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (SingleSubscribeProxy) objM4155new;
    }

    @m41
    @gl
    /* renamed from: const, reason: not valid java name */
    public static final ScopeProvider m6200const(@m41 View scope) {
        Csuper.m30705while(scope, "$this$scope");
        ScopeProvider scopeProviderM24567do = Cif.m24567do(scope);
        Csuper.m30681goto(scopeProviderM24567do, "ViewScopeProvider.from(this)");
        return scopeProviderM24567do;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: do, reason: not valid java name */
    public static final CompletableSubscribeProxy m6201do(@m41 np autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objM5329this = autoDisposable.m5329this(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    @m41
    @gl
    /* renamed from: else, reason: not valid java name */
    public static final CompletableSubscribeProxy m6202else(@m41 np autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objM5329this = autoDispose.m5329this(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM5329this, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (CompletableSubscribeProxy) objM5329this;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: for, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m6203for(@m41 fy0<T> autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objM2477new = autoDisposable.m2477new(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @m41
    @gl
    /* renamed from: goto, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m6204goto(@m41 io.reactivex.Cfor<T> autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objM29378case = autoDispose.m29378case(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: if, reason: not valid java name */
    public static final <T> FlowableSubscribeProxy<T> m6205if(@m41 io.reactivex.Cfor<T> autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objM29378case = autoDisposable.m29378case(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM29378case, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (FlowableSubscribeProxy) objM29378case;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: new, reason: not valid java name */
    public static final <T> ObservableSubscribeProxy<T> m6206new(@m41 Cnew<T> autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objAs = autoDisposable.as(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objAs, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (ObservableSubscribeProxy) objAs;
    }

    @m41
    @gl
    /* renamed from: this, reason: not valid java name */
    public static final <T> MaybeSubscribeProxy<T> m6207this(@m41 fy0<T> autoDispose, @m41 View view) {
        Csuper.m30705while(autoDispose, "$this$autoDispose");
        Csuper.m30705while(view, "view");
        Object objM2477new = autoDispose.m2477new(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM2477new, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (MaybeSubscribeProxy) objM2477new;
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "Renamed to `autoDispose()`", replaceWith = @an1(expression = "autoDispose(view)", imports = {}))
    @gl
    /* renamed from: try, reason: not valid java name */
    public static final <T> ParallelFlowableSubscribeProxy<T> m6208try(@m41 ub1<T> autoDisposable, @m41 View view) {
        Csuper.m30705while(autoDisposable, "$this$autoDisposable");
        Csuper.m30705while(view, "view");
        Object objM8328do = autoDisposable.m8328do(com.uber.autodispose.Cnew.m24630do(Cif.m24567do(view)));
        Csuper.m30681goto(objM8328do, "this.`as`(AutoDispose.au…copeProvider.from(view)))");
        return (ParallelFlowableSubscribeProxy) objM8328do;
    }
}
