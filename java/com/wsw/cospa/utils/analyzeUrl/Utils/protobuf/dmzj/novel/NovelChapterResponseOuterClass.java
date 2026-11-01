package com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cdo;
import com.google.protobuf.Cimplements;
import com.google.protobuf.Cnative;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.n;
import com.google.protobuf.t1;
import com.google.protobuf.v0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class NovelChapterResponseOuterClass {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u001cnovel_chapter_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel\"\u0099\u0001\n\u0014NovelChapterResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012b\n\u0004Data\u0018\u0003 \u0003(\u000b2T.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterVolumeResponse\"½\u0001\n\u001aNovelChapterVolumeResponse\u0012\u0010\n\bVolumeId\u0018\u0001 \u0001(\u0005\u0012\u0012\n\nVolumeName\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bVolumeOrder\u0018\u0003 \u0001(\u0005\u0012d\n\bChapters\u0018\u0004 \u0003(\u000b2R.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterItemResponse\"X\n\u0018NovelChapterItemResponse\u0012\u0011\n\tChapterId\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bChapterName\u0018\u0002 \u0001(\t\u0012\u0014\n\fChapterOrder\u0018\u0003 \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable;

    public static final class NovelChapterItemResponse extends GeneratedMessageV3 implements NovelChapterItemResponseOrBuilder {
        public static final int CHAPTERID_FIELD_NUMBER = 1;
        public static final int CHAPTERNAME_FIELD_NUMBER = 2;
        public static final int CHAPTERORDER_FIELD_NUMBER = 3;
        private static final NovelChapterItemResponse DEFAULT_INSTANCE = new NovelChapterItemResponse();
        private static final Parser<NovelChapterItemResponse> PARSER = new Cdo<NovelChapterItemResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponse.1
            @Override // com.google.protobuf.Parser
            public NovelChapterItemResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelChapterItemResponse(codedInputStream, cimplements);
            }
        };
        private static final long serialVersionUID = 0;
        private int chapterId_;
        private volatile Object chapterName_;
        private int chapterOrder_;
        private byte memoizedIsInitialized;

        public static NovelChapterItemResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelChapterItemResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelChapterItemResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelChapterItemResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelChapterItemResponse)) {
                return super.equals(obj);
            }
            NovelChapterItemResponse novelChapterItemResponse = (NovelChapterItemResponse) obj;
            return getChapterId() == novelChapterItemResponse.getChapterId() && getChapterName().equals(novelChapterItemResponse.getChapterName()) && getChapterOrder() == novelChapterItemResponse.getChapterOrder() && this.unknownFields.equals(novelChapterItemResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
        public int getChapterId() {
            return this.chapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
        public String getChapterName() {
            Object obj = this.chapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.chapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
        public ByteString getChapterNameBytes() {
            Object obj = this.chapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.chapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
        public int getChapterOrder() {
            return this.chapterOrder_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelChapterItemResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.chapterId_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            if (!getChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.chapterName_);
            }
            int i3 = this.chapterOrder_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(3, i3);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getChapterId()) * 37) + 2) * 53) + getChapterName().hashCode()) * 37) + 3) * 53) + getChapterOrder()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable.m19575new(NovelChapterItemResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.Ctry ctry) {
            return new NovelChapterItemResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.chapterId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.chapterName_);
            }
            int i2 = this.chapterOrder_;
            if (i2 != 0) {
                cnative.writeInt32(3, i2);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelChapterItemResponseOrBuilder {
            private int chapterId_;
            private Object chapterName_;
            private int chapterOrder_;

            public static final Descriptors.Cif getDescriptor() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearChapterId() {
                this.chapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChapterName() {
                this.chapterName_ = NovelChapterItemResponse.getDefaultInstance().getChapterName();
                onChanged();
                return this;
            }

            public Builder clearChapterOrder() {
                this.chapterOrder_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
            public int getChapterId() {
                return this.chapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
            public String getChapterName() {
                Object obj = this.chapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.chapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
            public ByteString getChapterNameBytes() {
                Object obj = this.chapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.chapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterItemResponseOrBuilder
            public int getChapterOrder() {
                return this.chapterOrder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable.m19575new(NovelChapterItemResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setChapterId(int i) {
                this.chapterId_ = i;
                onChanged();
                return this;
            }

            public Builder setChapterName(String str) {
                Objects.requireNonNull(str);
                this.chapterName_ = str;
                onChanged();
                return this;
            }

            public Builder setChapterNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.chapterName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setChapterOrder(int i) {
                this.chapterOrder_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.chapterName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterItemResponse build() {
                NovelChapterItemResponse novelChapterItemResponseBuildPartial = buildPartial();
                if (novelChapterItemResponseBuildPartial.isInitialized()) {
                    return novelChapterItemResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelChapterItemResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterItemResponse buildPartial() {
                NovelChapterItemResponse novelChapterItemResponse = new NovelChapterItemResponse(this);
                novelChapterItemResponse.chapterId_ = this.chapterId_;
                novelChapterItemResponse.chapterName_ = this.chapterName_;
                novelChapterItemResponse.chapterOrder_ = this.chapterOrder_;
                onBuilt();
                return novelChapterItemResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelChapterItemResponse getDefaultInstanceForType() {
                return NovelChapterItemResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.setField(celse, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (Builder) super.setRepeatedField(celse, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(t1 t1Var) {
                return (Builder) super.setUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.Cbreak cbreak) {
                return (Builder) super.clearOneof(cbreak);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(t1 t1Var) {
                return (Builder) super.mergeUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.chapterId_ = 0;
                this.chapterName_ = "";
                this.chapterOrder_ = 0;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.chapterName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NovelChapterItemResponse) {
                    return mergeFrom((NovelChapterItemResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(NovelChapterItemResponse novelChapterItemResponse) {
                if (novelChapterItemResponse == NovelChapterItemResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelChapterItemResponse.getChapterId() != 0) {
                    setChapterId(novelChapterItemResponse.getChapterId());
                }
                if (!novelChapterItemResponse.getChapterName().isEmpty()) {
                    this.chapterName_ = novelChapterItemResponse.chapterName_;
                    onChanged();
                }
                if (novelChapterItemResponse.getChapterOrder() != 0) {
                    setChapterOrder(novelChapterItemResponse.getChapterOrder());
                }
                mergeUnknownFields(novelChapterItemResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NovelChapterItemResponse novelChapterItemResponse = null;
                try {
                    try {
                        NovelChapterItemResponse novelChapterItemResponse2 = (NovelChapterItemResponse) NovelChapterItemResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelChapterItemResponse2 != null) {
                            mergeFrom(novelChapterItemResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelChapterItemResponse novelChapterItemResponse3 = (NovelChapterItemResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelChapterItemResponse = novelChapterItemResponse3;
                            if (novelChapterItemResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelChapterItemResponse != null) {
                        mergeFrom(novelChapterItemResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NovelChapterItemResponse novelChapterItemResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelChapterItemResponse);
        }

        public static NovelChapterItemResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NovelChapterItemResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelChapterItemResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterItemResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelChapterItemResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelChapterItemResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelChapterItemResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.chapterName_ = "";
        }

        public static NovelChapterItemResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelChapterItemResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelChapterItemResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NovelChapterItemResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 8) {
                                this.chapterId_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 18) {
                                this.chapterName_ = codedInputStream.k();
                            } else if (iL != 24) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.chapterOrder_ = codedInputStream.mo18439strictfp();
                            }
                        }
                        z = true;
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static NovelChapterItemResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterItemResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelChapterItemResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NovelChapterItemResponseOrBuilder extends MessageOrBuilder {
        int getChapterId();

        String getChapterName();

        ByteString getChapterNameBytes();

        int getChapterOrder();
    }

    public static final class NovelChapterResponse extends GeneratedMessageV3 implements NovelChapterResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<NovelChapterVolumeResponse> data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final NovelChapterResponse DEFAULT_INSTANCE = new NovelChapterResponse();
        private static final Parser<NovelChapterResponse> PARSER = new Cdo<NovelChapterResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponse.1
            @Override // com.google.protobuf.Parser
            public NovelChapterResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelChapterResponse(codedInputStream, cimplements);
            }
        };

        public static NovelChapterResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelChapterResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelChapterResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelChapterResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelChapterResponse)) {
                return super.equals(obj);
            }
            NovelChapterResponse novelChapterResponse = (NovelChapterResponse) obj;
            return getErrno() == novelChapterResponse.getErrno() && getErrmsg().equals(novelChapterResponse.getErrmsg()) && getDataList().equals(novelChapterResponse.getDataList()) && this.unknownFields.equals(novelChapterResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public NovelChapterVolumeResponse getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public List<NovelChapterVolumeResponse> getDataList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public NovelChapterVolumeResponseOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public List<? extends NovelChapterVolumeResponseOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelChapterResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.errno_;
            int iM20874abstract = i2 != 0 ? Cnative.m20874abstract(1, i2) + 0 : 0;
            if (!getErrmsgBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.errmsg_);
            }
            for (int i3 = 0; i3 < this.data_.size(); i3++) {
                iM20874abstract += Cnative.m20900synchronized(3, this.data_.get(i3));
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getErrno()) * 37) + 2) * 53) + getErrmsg().hashCode();
            if (getDataCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDataList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable.m19575new(NovelChapterResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.Ctry ctry) {
            return new NovelChapterResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.errno_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getErrmsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.errmsg_);
            }
            for (int i2 = 0; i2 < this.data_.size(); i2++) {
                cnative.f0(3, this.data_.get(i2));
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelChapterResponseOrBuilder {
            private int bitField0_;
            private v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> dataBuilder_;
            private List<NovelChapterVolumeResponse> data_;
            private Object errmsg_;
            private int errno_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new v0<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends NovelChapterVolumeResponse> iterable) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addData(NovelChapterVolumeResponse novelChapterVolumeResponse) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterVolumeResponse);
                    ensureDataIsMutable();
                    this.data_.add(novelChapterVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(novelChapterVolumeResponse);
                }
                return this;
            }

            public NovelChapterVolumeResponse.Builder addDataBuilder() {
                return (NovelChapterVolumeResponse.Builder) getDataFieldBuilder().m21460for(NovelChapterVolumeResponse.getDefaultInstance());
            }

            public Builder clearData() {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearErrmsg() {
                this.errmsg_ = NovelChapterResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public NovelChapterVolumeResponse getData(int i) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (NovelChapterVolumeResponse) v0Var.m21459final(i);
            }

            public NovelChapterVolumeResponse.Builder getDataBuilder(int i) {
                return (NovelChapterVolumeResponse.Builder) getDataFieldBuilder().m21454catch(i);
            }

            public List<NovelChapterVolumeResponse.Builder> getDataBuilderList() {
                return getDataFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public int getDataCount() {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public List<NovelChapterVolumeResponse> getDataList() {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.data_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public NovelChapterVolumeResponseOrBuilder getDataOrBuilder(int i) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (NovelChapterVolumeResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public List<? extends NovelChapterVolumeResponseOrBuilder> getDataOrBuilderList() {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable.m19575new(NovelChapterResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setData(int i, NovelChapterVolumeResponse novelChapterVolumeResponse) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterVolumeResponse);
                    ensureDataIsMutable();
                    this.data_.set(i, novelChapterVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, novelChapterVolumeResponse);
                }
                return this;
            }

            public Builder setErrmsg(String str) {
                Objects.requireNonNull(str);
                this.errmsg_ = str;
                onChanged();
                return this;
            }

            public Builder setErrmsgBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.errmsg_ = byteString;
                onChanged();
                return this;
            }

            public Builder setErrno(int i) {
                this.errno_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.errmsg_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterResponse build() {
                NovelChapterResponse novelChapterResponseBuildPartial = buildPartial();
                if (novelChapterResponseBuildPartial.isInitialized()) {
                    return novelChapterResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelChapterResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterResponse buildPartial() {
                NovelChapterResponse novelChapterResponse = new NovelChapterResponse(this);
                novelChapterResponse.errno_ = this.errno_;
                novelChapterResponse.errmsg_ = this.errmsg_;
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var != null) {
                    novelChapterResponse.data_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    novelChapterResponse.data_ = this.data_;
                }
                onBuilt();
                return novelChapterResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelChapterResponse getDefaultInstanceForType() {
                return NovelChapterResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.setField(celse, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (Builder) super.setRepeatedField(celse, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(t1 t1Var) {
                return (Builder) super.setUnknownFields(t1Var);
            }

            public NovelChapterVolumeResponse.Builder addDataBuilder(int i) {
                return (NovelChapterVolumeResponse.Builder) getDataFieldBuilder().m21462if(i, NovelChapterVolumeResponse.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.Cbreak cbreak) {
                return (Builder) super.clearOneof(cbreak);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(t1 t1Var) {
                return (Builder) super.mergeUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.errno_ = 0;
                this.errmsg_ = "";
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.errmsg_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addData(int i, NovelChapterVolumeResponse novelChapterVolumeResponse) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterVolumeResponse);
                    ensureDataIsMutable();
                    this.data_.add(i, novelChapterVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, novelChapterVolumeResponse);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NovelChapterResponse) {
                    return mergeFrom((NovelChapterResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i, NovelChapterVolumeResponse.Builder builder) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(NovelChapterResponse novelChapterResponse) {
                if (novelChapterResponse == NovelChapterResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelChapterResponse.getErrno() != 0) {
                    setErrno(novelChapterResponse.getErrno());
                }
                if (!novelChapterResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = novelChapterResponse.errmsg_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!novelChapterResponse.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = novelChapterResponse.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(novelChapterResponse.data_);
                        }
                        onChanged();
                    }
                } else if (!novelChapterResponse.data_.isEmpty()) {
                    if (!this.dataBuilder_.m21465public()) {
                        this.dataBuilder_.m21457do(novelChapterResponse.data_);
                    } else {
                        this.dataBuilder_.m21461goto();
                        this.dataBuilder_ = null;
                        this.data_ = novelChapterResponse.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(novelChapterResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(NovelChapterVolumeResponse.Builder builder) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addData(int i, NovelChapterVolumeResponse.Builder builder) {
                v0<NovelChapterVolumeResponse, NovelChapterVolumeResponse.Builder, NovelChapterVolumeResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NovelChapterResponse novelChapterResponse = null;
                try {
                    try {
                        NovelChapterResponse novelChapterResponse2 = (NovelChapterResponse) NovelChapterResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelChapterResponse2 != null) {
                            mergeFrom(novelChapterResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelChapterResponse novelChapterResponse3 = (NovelChapterResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelChapterResponse = novelChapterResponse3;
                            if (novelChapterResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelChapterResponse != null) {
                        mergeFrom(novelChapterResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NovelChapterResponse novelChapterResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelChapterResponse);
        }

        public static NovelChapterResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NovelChapterResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelChapterResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelChapterResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelChapterResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelChapterResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
            this.data_ = Collections.emptyList();
        }

        public static NovelChapterResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelChapterResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelChapterResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NovelChapterResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 8) {
                                this.errno_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 18) {
                                this.errmsg_ = codedInputStream.k();
                            } else if (iL != 26) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                if (!(z2 & true)) {
                                    this.data_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.data_.add((NovelChapterVolumeResponse) codedInputStream.mo18430interface(NovelChapterVolumeResponse.parser(), cimplements));
                            }
                        }
                        z = true;
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2 & true) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static NovelChapterResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelChapterResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NovelChapterResponseOrBuilder extends MessageOrBuilder {
        NovelChapterVolumeResponse getData(int i);

        int getDataCount();

        List<NovelChapterVolumeResponse> getDataList();

        NovelChapterVolumeResponseOrBuilder getDataOrBuilder(int i);

        List<? extends NovelChapterVolumeResponseOrBuilder> getDataOrBuilderList();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();
    }

    public static final class NovelChapterVolumeResponse extends GeneratedMessageV3 implements NovelChapterVolumeResponseOrBuilder {
        public static final int CHAPTERS_FIELD_NUMBER = 4;
        private static final NovelChapterVolumeResponse DEFAULT_INSTANCE = new NovelChapterVolumeResponse();
        private static final Parser<NovelChapterVolumeResponse> PARSER = new Cdo<NovelChapterVolumeResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponse.1
            @Override // com.google.protobuf.Parser
            public NovelChapterVolumeResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelChapterVolumeResponse(codedInputStream, cimplements);
            }
        };
        public static final int VOLUMEID_FIELD_NUMBER = 1;
        public static final int VOLUMENAME_FIELD_NUMBER = 2;
        public static final int VOLUMEORDER_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private List<NovelChapterItemResponse> chapters_;
        private byte memoizedIsInitialized;
        private int volumeId_;
        private volatile Object volumeName_;
        private int volumeOrder_;

        public static NovelChapterVolumeResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelChapterVolumeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelChapterVolumeResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelChapterVolumeResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelChapterVolumeResponse)) {
                return super.equals(obj);
            }
            NovelChapterVolumeResponse novelChapterVolumeResponse = (NovelChapterVolumeResponse) obj;
            return getVolumeId() == novelChapterVolumeResponse.getVolumeId() && getVolumeName().equals(novelChapterVolumeResponse.getVolumeName()) && getVolumeOrder() == novelChapterVolumeResponse.getVolumeOrder() && getChaptersList().equals(novelChapterVolumeResponse.getChaptersList()) && this.unknownFields.equals(novelChapterVolumeResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public NovelChapterItemResponse getChapters(int i) {
            return this.chapters_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public int getChaptersCount() {
            return this.chapters_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public List<NovelChapterItemResponse> getChaptersList() {
            return this.chapters_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public NovelChapterItemResponseOrBuilder getChaptersOrBuilder(int i) {
            return this.chapters_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public List<? extends NovelChapterItemResponseOrBuilder> getChaptersOrBuilderList() {
            return this.chapters_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelChapterVolumeResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.volumeId_;
            int iM20874abstract = i2 != 0 ? Cnative.m20874abstract(1, i2) + 0 : 0;
            if (!getVolumeNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.volumeName_);
            }
            int i3 = this.volumeOrder_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(3, i3);
            }
            for (int i4 = 0; i4 < this.chapters_.size(); i4++) {
                iM20874abstract += Cnative.m20900synchronized(4, this.chapters_.get(i4));
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public int getVolumeId() {
            return this.volumeId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public String getVolumeName() {
            Object obj = this.volumeName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.volumeName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public ByteString getVolumeNameBytes() {
            Object obj = this.volumeName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.volumeName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
        public int getVolumeOrder() {
            return this.volumeOrder_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVolumeId()) * 37) + 2) * 53) + getVolumeName().hashCode()) * 37) + 3) * 53) + getVolumeOrder();
            if (getChaptersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getChaptersList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable.m19575new(NovelChapterVolumeResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.Ctry ctry) {
            return new NovelChapterVolumeResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.volumeId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getVolumeNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.volumeName_);
            }
            int i2 = this.volumeOrder_;
            if (i2 != 0) {
                cnative.writeInt32(3, i2);
            }
            for (int i3 = 0; i3 < this.chapters_.size(); i3++) {
                cnative.f0(4, this.chapters_.get(i3));
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelChapterVolumeResponseOrBuilder {
            private int bitField0_;
            private v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> chaptersBuilder_;
            private List<NovelChapterItemResponse> chapters_;
            private int volumeId_;
            private Object volumeName_;
            private int volumeOrder_;

            private void ensureChaptersIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.chapters_ = new ArrayList(this.chapters_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> getChaptersFieldBuilder() {
                if (this.chaptersBuilder_ == null) {
                    this.chaptersBuilder_ = new v0<>(this.chapters_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.chapters_ = null;
                }
                return this.chaptersBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getChaptersFieldBuilder();
                }
            }

            public Builder addAllChapters(Iterable<? extends NovelChapterItemResponse> iterable) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.chapters_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addChapters(NovelChapterItemResponse novelChapterItemResponse) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterItemResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.add(novelChapterItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(novelChapterItemResponse);
                }
                return this;
            }

            public NovelChapterItemResponse.Builder addChaptersBuilder() {
                return (NovelChapterItemResponse.Builder) getChaptersFieldBuilder().m21460for(NovelChapterItemResponse.getDefaultInstance());
            }

            public Builder clearChapters() {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    this.chapters_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearVolumeId() {
                this.volumeId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVolumeName() {
                this.volumeName_ = NovelChapterVolumeResponse.getDefaultInstance().getVolumeName();
                onChanged();
                return this;
            }

            public Builder clearVolumeOrder() {
                this.volumeOrder_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public NovelChapterItemResponse getChapters(int i) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.get(i) : (NovelChapterItemResponse) v0Var.m21459final(i);
            }

            public NovelChapterItemResponse.Builder getChaptersBuilder(int i) {
                return (NovelChapterItemResponse.Builder) getChaptersFieldBuilder().m21454catch(i);
            }

            public List<NovelChapterItemResponse.Builder> getChaptersBuilderList() {
                return getChaptersFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public int getChaptersCount() {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public List<NovelChapterItemResponse> getChaptersList() {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.chapters_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public NovelChapterItemResponseOrBuilder getChaptersOrBuilder(int i) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.get(i) : (NovelChapterItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public List<? extends NovelChapterItemResponseOrBuilder> getChaptersOrBuilderList() {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.chapters_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public int getVolumeId() {
                return this.volumeId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public String getVolumeName() {
                Object obj = this.volumeName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.volumeName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public ByteString getVolumeNameBytes() {
                Object obj = this.volumeName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.volumeName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterResponseOuterClass.NovelChapterVolumeResponseOrBuilder
            public int getVolumeOrder() {
                return this.volumeOrder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelChapterResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable.m19575new(NovelChapterVolumeResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeChapters(int i) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setChapters(int i, NovelChapterItemResponse novelChapterItemResponse) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterItemResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.set(i, novelChapterItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, novelChapterItemResponse);
                }
                return this;
            }

            public Builder setVolumeId(int i) {
                this.volumeId_ = i;
                onChanged();
                return this;
            }

            public Builder setVolumeName(String str) {
                Objects.requireNonNull(str);
                this.volumeName_ = str;
                onChanged();
                return this;
            }

            public Builder setVolumeNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.volumeName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setVolumeOrder(int i) {
                this.volumeOrder_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.volumeName_ = "";
                this.chapters_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterVolumeResponse build() {
                NovelChapterVolumeResponse novelChapterVolumeResponseBuildPartial = buildPartial();
                if (novelChapterVolumeResponseBuildPartial.isInitialized()) {
                    return novelChapterVolumeResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelChapterVolumeResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelChapterVolumeResponse buildPartial() {
                NovelChapterVolumeResponse novelChapterVolumeResponse = new NovelChapterVolumeResponse(this);
                novelChapterVolumeResponse.volumeId_ = this.volumeId_;
                novelChapterVolumeResponse.volumeName_ = this.volumeName_;
                novelChapterVolumeResponse.volumeOrder_ = this.volumeOrder_;
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var != null) {
                    novelChapterVolumeResponse.chapters_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.chapters_ = Collections.unmodifiableList(this.chapters_);
                        this.bitField0_ &= -2;
                    }
                    novelChapterVolumeResponse.chapters_ = this.chapters_;
                }
                onBuilt();
                return novelChapterVolumeResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelChapterVolumeResponse getDefaultInstanceForType() {
                return NovelChapterVolumeResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.setField(celse, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
                return (Builder) super.setRepeatedField(celse, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(t1 t1Var) {
                return (Builder) super.setUnknownFields(t1Var);
            }

            public NovelChapterItemResponse.Builder addChaptersBuilder(int i) {
                return (NovelChapterItemResponse.Builder) getChaptersFieldBuilder().m21462if(i, NovelChapterItemResponse.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.Cbreak cbreak) {
                return (Builder) super.clearOneof(cbreak);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(t1 t1Var) {
                return (Builder) super.mergeUnknownFields(t1Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.volumeId_ = 0;
                this.volumeName_ = "";
                this.volumeOrder_ = 0;
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    this.chapters_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.volumeName_ = "";
                this.chapters_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addChapters(int i, NovelChapterItemResponse novelChapterItemResponse) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelChapterItemResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.add(i, novelChapterItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, novelChapterItemResponse);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NovelChapterVolumeResponse) {
                    return mergeFrom((NovelChapterVolumeResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setChapters(int i, NovelChapterItemResponse.Builder builder) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(NovelChapterVolumeResponse novelChapterVolumeResponse) {
                if (novelChapterVolumeResponse == NovelChapterVolumeResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelChapterVolumeResponse.getVolumeId() != 0) {
                    setVolumeId(novelChapterVolumeResponse.getVolumeId());
                }
                if (!novelChapterVolumeResponse.getVolumeName().isEmpty()) {
                    this.volumeName_ = novelChapterVolumeResponse.volumeName_;
                    onChanged();
                }
                if (novelChapterVolumeResponse.getVolumeOrder() != 0) {
                    setVolumeOrder(novelChapterVolumeResponse.getVolumeOrder());
                }
                if (this.chaptersBuilder_ == null) {
                    if (!novelChapterVolumeResponse.chapters_.isEmpty()) {
                        if (this.chapters_.isEmpty()) {
                            this.chapters_ = novelChapterVolumeResponse.chapters_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureChaptersIsMutable();
                            this.chapters_.addAll(novelChapterVolumeResponse.chapters_);
                        }
                        onChanged();
                    }
                } else if (!novelChapterVolumeResponse.chapters_.isEmpty()) {
                    if (!this.chaptersBuilder_.m21465public()) {
                        this.chaptersBuilder_.m21457do(novelChapterVolumeResponse.chapters_);
                    } else {
                        this.chaptersBuilder_.m21461goto();
                        this.chaptersBuilder_ = null;
                        this.chapters_ = novelChapterVolumeResponse.chapters_;
                        this.bitField0_ &= -2;
                        this.chaptersBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getChaptersFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(novelChapterVolumeResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addChapters(NovelChapterItemResponse.Builder builder) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addChapters(int i, NovelChapterItemResponse.Builder builder) {
                v0<NovelChapterItemResponse, NovelChapterItemResponse.Builder, NovelChapterItemResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.add(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NovelChapterVolumeResponse novelChapterVolumeResponse = null;
                try {
                    try {
                        NovelChapterVolumeResponse novelChapterVolumeResponse2 = (NovelChapterVolumeResponse) NovelChapterVolumeResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelChapterVolumeResponse2 != null) {
                            mergeFrom(novelChapterVolumeResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelChapterVolumeResponse novelChapterVolumeResponse3 = (NovelChapterVolumeResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelChapterVolumeResponse = novelChapterVolumeResponse3;
                            if (novelChapterVolumeResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelChapterVolumeResponse != null) {
                        mergeFrom(novelChapterVolumeResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NovelChapterVolumeResponse novelChapterVolumeResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelChapterVolumeResponse);
        }

        public static NovelChapterVolumeResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NovelChapterVolumeResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelChapterVolumeResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterVolumeResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelChapterVolumeResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelChapterVolumeResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelChapterVolumeResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.volumeName_ = "";
            this.chapters_ = Collections.emptyList();
        }

        public static NovelChapterVolumeResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelChapterVolumeResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelChapterVolumeResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NovelChapterVolumeResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int iL = codedInputStream.l();
                            if (iL != 0) {
                                if (iL == 8) {
                                    this.volumeId_ = codedInputStream.mo18439strictfp();
                                } else if (iL == 18) {
                                    this.volumeName_ = codedInputStream.k();
                                } else if (iL == 24) {
                                    this.volumeOrder_ = codedInputStream.mo18439strictfp();
                                } else if (iL != 34) {
                                    if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                    }
                                } else {
                                    if (!(z2 & true)) {
                                        this.chapters_ = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.chapters_.add((NovelChapterItemResponse) codedInputStream.mo18430interface(NovelChapterItemResponse.parser(), cimplements));
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new n(e).setUnfinishedMessage(this);
                        }
                    } catch (n e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2 & true) {
                        this.chapters_ = Collections.unmodifiableList(this.chapters_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static NovelChapterVolumeResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelChapterVolumeResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelChapterVolumeResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelChapterVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NovelChapterVolumeResponseOrBuilder extends MessageOrBuilder {
        NovelChapterItemResponse getChapters(int i);

        int getChaptersCount();

        List<NovelChapterItemResponse> getChaptersList();

        NovelChapterItemResponseOrBuilder getChaptersOrBuilder(int i);

        List<? extends NovelChapterItemResponseOrBuilder> getChaptersOrBuilderList();

        int getVolumeId();

        String getVolumeName();

        ByteString getVolumeNameBytes();

        int getVolumeOrder();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"VolumeId", "VolumeName", "VolumeOrder", "Chapters"});
        Descriptors.Cif cif3 = getDescriptor().m19244while().get(2);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor = cif3;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif3, new String[]{"ChapterId", "ChapterName", "ChapterOrder"});
    }

    private NovelChapterResponseOuterClass() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(Cimplements cimplements) {
    }

    public static void registerAllExtensions(Cprotected cprotected) {
        registerAllExtensions((Cimplements) cprotected);
    }
}
