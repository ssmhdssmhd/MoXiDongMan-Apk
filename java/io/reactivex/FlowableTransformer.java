package io.reactivex;

import android.support.v4.b41;
import org.reactivestreams.Publisher;

/* loaded from: classes3.dex */
public interface FlowableTransformer<Upstream, Downstream> {
    @b41
    Publisher<Downstream> apply(@b41 Cfor<Upstream> cfor);
}
