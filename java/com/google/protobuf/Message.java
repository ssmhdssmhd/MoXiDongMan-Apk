package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public interface Message extends MessageLite, MessageOrBuilder {

    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        Builder addRepeatedField(Descriptors.Celse celse, Object obj);

        Message build();

        Message buildPartial();

        Builder clear();

        Builder clearField(Descriptors.Celse celse);

        Builder clearOneof(Descriptors.Cbreak cbreak);

        /* renamed from: clone */
        Builder mo18392clone();

        @Override // com.google.protobuf.MessageOrBuilder
        Descriptors.Cif getDescriptorForType();

        Builder getFieldBuilder(Descriptors.Celse celse);

        Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i);

        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        boolean mergeDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(ByteString byteString) throws n;

        Builder mergeFrom(ByteString byteString, Cimplements cimplements) throws n;

        Builder mergeFrom(CodedInputStream codedInputStream) throws IOException;

        Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(Message message);

        Builder mergeFrom(InputStream inputStream) throws IOException;

        Builder mergeFrom(InputStream inputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(byte[] bArr) throws n;

        Builder mergeFrom(byte[] bArr, int i, int i2) throws n;

        Builder mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n;

        Builder mergeFrom(byte[] bArr, Cimplements cimplements) throws n;

        Builder mergeUnknownFields(t1 t1Var);

        Builder newBuilderForField(Descriptors.Celse celse);

        Builder setField(Descriptors.Celse celse, Object obj);

        Builder setRepeatedField(Descriptors.Celse celse, int i, Object obj);

        Builder setUnknownFields(t1 t1Var);
    }

    boolean equals(Object obj);

    Parser<? extends Message> getParserForType();

    int hashCode();

    Builder newBuilderForType();

    Builder toBuilder();

    String toString();
}
