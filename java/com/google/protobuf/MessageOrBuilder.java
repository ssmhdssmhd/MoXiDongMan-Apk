package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface MessageOrBuilder extends MessageLiteOrBuilder {
    List<String> findInitializationErrors();

    Map<Descriptors.Celse, Object> getAllFields();

    Message getDefaultInstanceForType();

    Descriptors.Cif getDescriptorForType();

    Object getField(Descriptors.Celse celse);

    String getInitializationErrorString();

    Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak);

    Object getRepeatedField(Descriptors.Celse celse, int i);

    int getRepeatedFieldCount(Descriptors.Celse celse);

    t1 getUnknownFields();

    boolean hasField(Descriptors.Celse celse);

    boolean hasOneof(Descriptors.Cbreak cbreak);
}
