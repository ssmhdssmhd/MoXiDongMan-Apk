package com.google.protobuf;

import android.support.v4.fx1;
import com.google.protobuf.Descriptors;

/* loaded from: classes2.dex */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.Cthis cthis, RpcController rpcController, Message message, Message message2) throws fx1;
}
