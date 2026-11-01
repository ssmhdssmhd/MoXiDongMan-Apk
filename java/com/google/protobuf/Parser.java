package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public interface Parser<MessageType> {
    MessageType parseDelimitedFrom(InputStream inputStream) throws n;

    MessageType parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws n;

    MessageType parseFrom(ByteString byteString) throws n;

    MessageType parseFrom(ByteString byteString, Cimplements cimplements) throws n;

    MessageType parseFrom(CodedInputStream codedInputStream) throws n;

    MessageType parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n;

    MessageType parseFrom(InputStream inputStream) throws n;

    MessageType parseFrom(InputStream inputStream, Cimplements cimplements) throws n;

    MessageType parseFrom(ByteBuffer byteBuffer) throws n;

    MessageType parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n;

    MessageType parseFrom(byte[] bArr) throws n;

    MessageType parseFrom(byte[] bArr, int i, int i2) throws n;

    MessageType parseFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n;

    MessageType parseFrom(byte[] bArr, Cimplements cimplements) throws n;

    MessageType parsePartialDelimitedFrom(InputStream inputStream) throws n;

    MessageType parsePartialDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws n;

    MessageType parsePartialFrom(ByteString byteString) throws n;

    MessageType parsePartialFrom(ByteString byteString, Cimplements cimplements) throws n;

    MessageType parsePartialFrom(CodedInputStream codedInputStream) throws n;

    MessageType parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n;

    MessageType parsePartialFrom(InputStream inputStream) throws n;

    MessageType parsePartialFrom(InputStream inputStream, Cimplements cimplements) throws n;

    MessageType parsePartialFrom(byte[] bArr) throws n;

    MessageType parsePartialFrom(byte[] bArr, int i, int i2) throws n;

    MessageType parsePartialFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n;

    MessageType parsePartialFrom(byte[] bArr, Cimplements cimplements) throws n;
}
