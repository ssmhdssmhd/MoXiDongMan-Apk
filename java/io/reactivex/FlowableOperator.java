package io.reactivex;

import android.support.v4.b41;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public interface FlowableOperator<Downstream, Upstream> {
    @b41
    Subscriber<? super Upstream> apply(@b41 Subscriber<? super Downstream> subscriber) throws Exception;
}
