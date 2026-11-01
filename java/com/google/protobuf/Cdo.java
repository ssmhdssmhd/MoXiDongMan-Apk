package com.google.protobuf;

import android.support.v4.sb2;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: com.google.protobuf.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo<MessageType extends MessageLite> implements Parser<MessageType> {
    private static final Cimplements EMPTY_REGISTRY = Cimplements.m20607new();

    private MessageType checkMessageInitialized(MessageType messagetype) throws n {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw newUninitializedMessageException(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    private sb2 newUninitializedMessageException(MessageType messagetype) {
        return messagetype instanceof AbstractMessageLite ? ((AbstractMessageLite) messagetype).newUninitializedMessageException() : new sb2(messagetype);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws n {
        return (MessageType) checkMessageInitialized(parsePartialDelimitedFrom(inputStream, cimplements));
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            return (MessageType) parsePartialFrom((InputStream) new AbstractMessageLite.Cdo.C0156do(inputStream, CodedInputStream.b(i, inputStream)), cimplements);
        } catch (IOException e) {
            throw new n(e);
        }
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseDelimitedFrom(InputStream inputStream) throws n {
        return (MessageType) parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialDelimitedFrom(InputStream inputStream) throws n {
        return (MessageType) parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(CodedInputStream codedInputStream) throws n {
        return parsePartialFrom(codedInputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(ByteString byteString, Cimplements cimplements) throws n {
        try {
            CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
            MessageType partialFrom = parsePartialFrom(codedInputStreamNewCodedInput, cimplements);
            try {
                codedInputStreamNewCodedInput.mo18423do(0);
                return partialFrom;
            } catch (n e) {
                throw e.setUnfinishedMessage(partialFrom);
            }
        } catch (n e2) {
            throw e2;
        }
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        return (MessageType) checkMessageInitialized(parsePartialFrom(codedInputStream, cimplements));
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(CodedInputStream codedInputStream) throws n {
        return (MessageType) parseFrom(codedInputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return (MessageType) checkMessageInitialized(parsePartialFrom(byteString, cimplements));
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(ByteString byteString) throws n {
        return (MessageType) parseFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(ByteString byteString) throws n {
        return (MessageType) parsePartialFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        try {
            CodedInputStream codedInputStreamM18412final = CodedInputStream.m18412final(byteBuffer);
            MessageType partialFrom = parsePartialFrom(codedInputStreamM18412final, cimplements);
            try {
                codedInputStreamM18412final.mo18423do(0);
                return (MessageType) checkMessageInitialized(partialFrom);
            } catch (n e) {
                throw e.setUnfinishedMessage(partialFrom);
            }
        } catch (n e2) {
            throw e2;
        }
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
        try {
            CodedInputStream codedInputStreamM18418while = CodedInputStream.m18418while(bArr, i, i2);
            MessageType partialFrom = parsePartialFrom(codedInputStreamM18418while, cimplements);
            try {
                codedInputStreamM18418while.mo18423do(0);
                return partialFrom;
            } catch (n e) {
                throw e.setUnfinishedMessage(partialFrom);
            }
        } catch (n e2) {
            throw e2;
        }
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(byte[] bArr, int i, int i2) throws n {
        return (MessageType) parsePartialFrom(bArr, i, i2, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(ByteBuffer byteBuffer) throws n {
        return (MessageType) parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(byte[] bArr, Cimplements cimplements) throws n {
        return (MessageType) parsePartialFrom(bArr, 0, bArr.length, cimplements);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
        return (MessageType) checkMessageInitialized(parsePartialFrom(bArr, i, i2, cimplements));
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(byte[] bArr) throws n {
        return (MessageType) parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(byte[] bArr, int i, int i2) throws n {
        return (MessageType) parseFrom(bArr, i, i2, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(InputStream inputStream, Cimplements cimplements) throws n {
        CodedInputStream codedInputStreamM18408break = CodedInputStream.m18408break(inputStream);
        MessageType partialFrom = parsePartialFrom(codedInputStreamM18408break, cimplements);
        try {
            codedInputStreamM18408break.mo18423do(0);
            return partialFrom;
        } catch (n e) {
            throw e.setUnfinishedMessage(partialFrom);
        }
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return (MessageType) parseFrom(bArr, 0, bArr.length, cimplements);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(byte[] bArr) throws n {
        return (MessageType) parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(InputStream inputStream, Cimplements cimplements) throws n {
        return (MessageType) checkMessageInitialized(parsePartialFrom(inputStream, cimplements));
    }

    @Override // com.google.protobuf.Parser
    public MessageType parseFrom(InputStream inputStream) throws n {
        return (MessageType) parseFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.Parser
    public MessageType parsePartialFrom(InputStream inputStream) throws n {
        return (MessageType) parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }
}
