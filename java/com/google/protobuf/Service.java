package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes2.dex */
public interface Service {
    void callMethod(Descriptors.Cthis cthis, RpcController rpcController, Message message, RpcCallback<Message> rpcCallback);

    Descriptors.Ccatch getDescriptorForType();

    Message getRequestPrototype(Descriptors.Cthis cthis);

    Message getResponsePrototype(Descriptors.Cthis cthis);
}
