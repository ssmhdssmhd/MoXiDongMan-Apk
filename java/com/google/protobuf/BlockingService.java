package com.google.protobuf;

import android.support.v4.fx1;
import com.google.protobuf.Descriptors;

/* loaded from: classes2.dex */
public interface BlockingService {
    Message callBlockingMethod(Descriptors.Cthis cthis, RpcController rpcController, Message message) throws fx1;

    Descriptors.Ccatch getDescriptorForType();

    Message getRequestPrototype(Descriptors.Cthis cthis);

    Message getResponsePrototype(Descriptors.Cthis cthis);
}
