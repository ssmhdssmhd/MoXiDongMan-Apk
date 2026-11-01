package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;

/* loaded from: classes2.dex */
public interface ProtocolMessageEnum extends Internal.EnumLite {
    Descriptors.Ctry getDescriptorForType();

    @Override // com.google.protobuf.Internal.EnumLite
    int getNumber();

    Descriptors.Ccase getValueDescriptor();
}
