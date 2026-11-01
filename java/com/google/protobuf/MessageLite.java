package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        MessageLite build();

        MessageLite buildPartial();

        Builder clear();

        /* renamed from: clone */
        Builder mo18392clone();

        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        boolean mergeDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(ByteString byteString) throws n;

        Builder mergeFrom(ByteString byteString, Cimplements cimplements) throws n;

        Builder mergeFrom(CodedInputStream codedInputStream) throws IOException;

        Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(MessageLite messageLite);

        Builder mergeFrom(InputStream inputStream) throws IOException;

        Builder mergeFrom(InputStream inputStream, Cimplements cimplements) throws IOException;

        Builder mergeFrom(byte[] bArr) throws n;

        Builder mergeFrom(byte[] bArr, int i, int i2) throws n;

        Builder mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n;

        Builder mergeFrom(byte[] bArr, Cimplements cimplements) throws n;
    }

    Parser<? extends MessageLite> getParserForType();

    int getSerializedSize();

    Builder newBuilderForType();

    Builder toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeDelimitedTo(OutputStream outputStream) throws IOException;

    void writeTo(Cnative cnative) throws IOException;

    void writeTo(OutputStream outputStream) throws IOException;
}
