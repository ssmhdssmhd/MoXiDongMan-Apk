package com.uber.autodispose;

import android.support.v4.fy0;
import android.support.v4.jz1;
import android.support.v4.m41;
import android.support.v4.np;
import android.support.v4.ub1;
import androidx.exifinterface.media.ExifInterface;
import io.reactivex.Cfor;
import io.reactivex.Cnew;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0006H&J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\bH&J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\nH&J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\fH&J\f\u0010\u0005\u001a\u00020\u000f*\u00020\u000eH&¨\u0006\u0010"}, d2 = {"Lcom/uber/autodispose/AutoDisposeContext;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/ub1;", "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;", "autoDispose", "Lio/reactivex/for;", "Lcom/uber/autodispose/FlowableSubscribeProxy;", "Lio/reactivex/new;", "Lcom/uber/autodispose/ObservableSubscribeProxy;", "Landroid/support/v4/jz1;", "Lcom/uber/autodispose/SingleSubscribeProxy;", "Landroid/support/v4/fy0;", "Lcom/uber/autodispose/MaybeSubscribeProxy;", "Landroid/support/v4/np;", "Lcom/uber/autodispose/CompletableSubscribeProxy;", "autodispose"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public interface AutoDisposeContext {
    @m41
    CompletableSubscribeProxy autoDispose(@m41 np npVar);

    @m41
    <T> FlowableSubscribeProxy<T> autoDispose(@m41 Cfor<T> cfor);

    @m41
    <T> MaybeSubscribeProxy<T> autoDispose(@m41 fy0<T> fy0Var);

    @m41
    <T> ObservableSubscribeProxy<T> autoDispose(@m41 Cnew<T> cnew);

    @m41
    <T> ParallelFlowableSubscribeProxy<T> autoDispose(@m41 ub1<T> ub1Var);

    @m41
    <T> SingleSubscribeProxy<T> autoDispose(@m41 jz1<T> jz1Var);
}
