package com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic;

import androidx.exifinterface.media.ExifInterface;
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
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.a1;
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
public final class DetailResponse {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u0015detail_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u0095\u0001\n\u0013ComicDetailResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012_\n\u0004Data\u0018\u0003 \u0001(\u000b2Q.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailInfoResponse\"Ä\u0006\n\u0017ComicDetailInfoResponse\u0012\n\n\u0002Id\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u0011\n\tDirection\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006Islong\u0018\u0004 \u0001(\u0005\u0012\u000e\n\u0006IsDmzj\u0018\u0005 \u0001(\u0005\u0012\r\n\u0005Cover\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bDescription\u0018\u0007 \u0001(\t\u0012\u0016\n\u000eLastUpdatetime\u0018\b \u0001(\u0003\u0012\u001d\n\u0015LastUpdateChapterName\u0018\t \u0001(\t\u0012\u0011\n\tCopyright\u0018\n \u0001(\u0005\u0012\u0013\n\u000bFirstLetter\u0018\u000b \u0001(\t\u0012\u000f\n\u0007ComicPy\u0018\f \u0001(\t\u0012\u000e\n\u0006Hidden\u0018\r \u0001(\u0005\u0012\u000e\n\u0006HotNum\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006HitNum\u0018\u000f \u0001(\u0005\u0012\u000b\n\u0003Uid\u0018\u0010 \u0001(\u0005\u0012\u000e\n\u0006IsLock\u0018\u0011 \u0001(\u0005\u0012\u001b\n\u0013LastUpdateChapterId\u0018\u0012 \u0001(\u0005\u0012d\n\u0005Types\u0018\u0013 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012e\n\u0006Status\u0018\u0014 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012f\n\u0007Authors\u0018\u0015 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012\u0014\n\fSubscribeNum\u0018\u0016 \u0001(\u0005\u0012f\n\bChapters\u0018\u0017 \u0003(\u000b2T.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailChapterResponse\u0012\u0013\n\u000bIsNeedLogin\u0018\u0018 \u0001(\u0005\u0012\u0015\n\rIsHideChapter\u0018\u001a \u0001(\u0005\"=\n\u001bComicDetailTypeItemResponse\u0012\r\n\u0005TagId\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007TagName\u0018\u0002 \u0001(\t\"\u0093\u0001\n\u001aComicDetailChapterResponse\u0012\r\n\u0005Title\u0018\u0001 \u0001(\t\u0012f\n\u0004Data\u0018\u0002 \u0003(\u000b2X.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailChapterInfoResponse\"\u0085\u0001\n\u001eComicDetailChapterInfoResponse\u0012\u0011\n\tChapterId\u0018\u0001 \u0001(\u0005\u0012\u0014\n\fChapterTitle\u0018\u0002 \u0001(\t\u0012\u0012\n\nUpdatetime\u0018\u0003 \u0001(\u0003\u0012\u0010\n\bFilesize\u0018\u0004 \u0001(\u0005\u0012\u0014\n\fChapterOrder\u0018\u0005 \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable;

    public static final class ComicDetailChapterInfoResponse extends GeneratedMessageV3 implements ComicDetailChapterInfoResponseOrBuilder {
        public static final int CHAPTERID_FIELD_NUMBER = 1;
        public static final int CHAPTERORDER_FIELD_NUMBER = 5;
        public static final int CHAPTERTITLE_FIELD_NUMBER = 2;
        public static final int FILESIZE_FIELD_NUMBER = 4;
        public static final int UPDATETIME_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int chapterId_;
        private int chapterOrder_;
        private volatile Object chapterTitle_;
        private int filesize_;
        private byte memoizedIsInitialized;
        private long updatetime_;
        private static final ComicDetailChapterInfoResponse DEFAULT_INSTANCE = new ComicDetailChapterInfoResponse();
        private static final Parser<ComicDetailChapterInfoResponse> PARSER = new Cdo<ComicDetailChapterInfoResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponse.1
            @Override // com.google.protobuf.Parser
            public ComicDetailChapterInfoResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicDetailChapterInfoResponse(codedInputStream, cimplements);
            }
        };

        public static ComicDetailChapterInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicDetailChapterInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicDetailChapterInfoResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicDetailChapterInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicDetailChapterInfoResponse)) {
                return super.equals(obj);
            }
            ComicDetailChapterInfoResponse comicDetailChapterInfoResponse = (ComicDetailChapterInfoResponse) obj;
            return getChapterId() == comicDetailChapterInfoResponse.getChapterId() && getChapterTitle().equals(comicDetailChapterInfoResponse.getChapterTitle()) && getUpdatetime() == comicDetailChapterInfoResponse.getUpdatetime() && getFilesize() == comicDetailChapterInfoResponse.getFilesize() && getChapterOrder() == comicDetailChapterInfoResponse.getChapterOrder() && this.unknownFields.equals(comicDetailChapterInfoResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public int getChapterId() {
            return this.chapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public int getChapterOrder() {
            return this.chapterOrder_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public String getChapterTitle() {
            Object obj = this.chapterTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.chapterTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public ByteString getChapterTitleBytes() {
            Object obj = this.chapterTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.chapterTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public int getFilesize() {
            return this.filesize_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicDetailChapterInfoResponse> getParserForType() {
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
            if (!getChapterTitleBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.chapterTitle_);
            }
            long j = this.updatetime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(3, j);
            }
            int i3 = this.filesize_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(4, i3);
            }
            int i4 = this.chapterOrder_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(5, i4);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
        public long getUpdatetime() {
            return this.updatetime_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getChapterId()) * 37) + 2) * 53) + getChapterTitle().hashCode()) * 37) + 3) * 53) + Internal.m19622native(getUpdatetime())) * 37) + 4) * 53) + getFilesize()) * 37) + 5) * 53) + getChapterOrder()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable.m19575new(ComicDetailChapterInfoResponse.class, Builder.class);
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
            return new ComicDetailChapterInfoResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.chapterId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getChapterTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.chapterTitle_);
            }
            long j = this.updatetime_;
            if (j != 0) {
                cnative.writeInt64(3, j);
            }
            int i2 = this.filesize_;
            if (i2 != 0) {
                cnative.writeInt32(4, i2);
            }
            int i3 = this.chapterOrder_;
            if (i3 != 0) {
                cnative.writeInt32(5, i3);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicDetailChapterInfoResponseOrBuilder {
            private int chapterId_;
            private int chapterOrder_;
            private Object chapterTitle_;
            private int filesize_;
            private long updatetime_;

            public static final Descriptors.Cif getDescriptor() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearChapterId() {
                this.chapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChapterOrder() {
                this.chapterOrder_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChapterTitle() {
                this.chapterTitle_ = ComicDetailChapterInfoResponse.getDefaultInstance().getChapterTitle();
                onChanged();
                return this;
            }

            public Builder clearFilesize() {
                this.filesize_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUpdatetime() {
                this.updatetime_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public int getChapterId() {
                return this.chapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public int getChapterOrder() {
                return this.chapterOrder_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public String getChapterTitle() {
                Object obj = this.chapterTitle_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.chapterTitle_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public ByteString getChapterTitleBytes() {
                Object obj = this.chapterTitle_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.chapterTitle_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public int getFilesize() {
                return this.filesize_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterInfoResponseOrBuilder
            public long getUpdatetime() {
                return this.updatetime_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable.m19575new(ComicDetailChapterInfoResponse.class, Builder.class);
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

            public Builder setChapterOrder(int i) {
                this.chapterOrder_ = i;
                onChanged();
                return this;
            }

            public Builder setChapterTitle(String str) {
                Objects.requireNonNull(str);
                this.chapterTitle_ = str;
                onChanged();
                return this;
            }

            public Builder setChapterTitleBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.chapterTitle_ = byteString;
                onChanged();
                return this;
            }

            public Builder setFilesize(int i) {
                this.filesize_ = i;
                onChanged();
                return this;
            }

            public Builder setUpdatetime(long j) {
                this.updatetime_ = j;
                onChanged();
                return this;
            }

            private Builder() {
                this.chapterTitle_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailChapterInfoResponse build() {
                ComicDetailChapterInfoResponse comicDetailChapterInfoResponseBuildPartial = buildPartial();
                if (comicDetailChapterInfoResponseBuildPartial.isInitialized()) {
                    return comicDetailChapterInfoResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicDetailChapterInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailChapterInfoResponse buildPartial() {
                ComicDetailChapterInfoResponse comicDetailChapterInfoResponse = new ComicDetailChapterInfoResponse(this);
                comicDetailChapterInfoResponse.chapterId_ = this.chapterId_;
                comicDetailChapterInfoResponse.chapterTitle_ = this.chapterTitle_;
                comicDetailChapterInfoResponse.updatetime_ = this.updatetime_;
                comicDetailChapterInfoResponse.filesize_ = this.filesize_;
                comicDetailChapterInfoResponse.chapterOrder_ = this.chapterOrder_;
                onBuilt();
                return comicDetailChapterInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicDetailChapterInfoResponse getDefaultInstanceForType() {
                return ComicDetailChapterInfoResponse.getDefaultInstance();
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
                this.chapterTitle_ = "";
                this.updatetime_ = 0L;
                this.filesize_ = 0;
                this.chapterOrder_ = 0;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.chapterTitle_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ComicDetailChapterInfoResponse) {
                    return mergeFrom((ComicDetailChapterInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ComicDetailChapterInfoResponse comicDetailChapterInfoResponse) {
                if (comicDetailChapterInfoResponse == ComicDetailChapterInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicDetailChapterInfoResponse.getChapterId() != 0) {
                    setChapterId(comicDetailChapterInfoResponse.getChapterId());
                }
                if (!comicDetailChapterInfoResponse.getChapterTitle().isEmpty()) {
                    this.chapterTitle_ = comicDetailChapterInfoResponse.chapterTitle_;
                    onChanged();
                }
                if (comicDetailChapterInfoResponse.getUpdatetime() != 0) {
                    setUpdatetime(comicDetailChapterInfoResponse.getUpdatetime());
                }
                if (comicDetailChapterInfoResponse.getFilesize() != 0) {
                    setFilesize(comicDetailChapterInfoResponse.getFilesize());
                }
                if (comicDetailChapterInfoResponse.getChapterOrder() != 0) {
                    setChapterOrder(comicDetailChapterInfoResponse.getChapterOrder());
                }
                mergeUnknownFields(comicDetailChapterInfoResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ComicDetailChapterInfoResponse comicDetailChapterInfoResponse = null;
                try {
                    try {
                        ComicDetailChapterInfoResponse comicDetailChapterInfoResponse2 = (ComicDetailChapterInfoResponse) ComicDetailChapterInfoResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicDetailChapterInfoResponse2 != null) {
                            mergeFrom(comicDetailChapterInfoResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicDetailChapterInfoResponse comicDetailChapterInfoResponse3 = (ComicDetailChapterInfoResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicDetailChapterInfoResponse = comicDetailChapterInfoResponse3;
                            if (comicDetailChapterInfoResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicDetailChapterInfoResponse != null) {
                        mergeFrom(comicDetailChapterInfoResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicDetailChapterInfoResponse comicDetailChapterInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicDetailChapterInfoResponse);
        }

        public static ComicDetailChapterInfoResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicDetailChapterInfoResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicDetailChapterInfoResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailChapterInfoResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicDetailChapterInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicDetailChapterInfoResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicDetailChapterInfoResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.chapterTitle_ = "";
        }

        public static ComicDetailChapterInfoResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicDetailChapterInfoResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicDetailChapterInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicDetailChapterInfoResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.chapterTitle_ = codedInputStream.k();
                            } else if (iL == 24) {
                                this.updatetime_ = codedInputStream.mo18446volatile();
                            } else if (iL == 32) {
                                this.filesize_ = codedInputStream.mo18439strictfp();
                            } else if (iL != 40) {
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

        public static ComicDetailChapterInfoResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailChapterInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicDetailChapterInfoResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicDetailChapterInfoResponseOrBuilder extends MessageOrBuilder {
        int getChapterId();

        int getChapterOrder();

        String getChapterTitle();

        ByteString getChapterTitleBytes();

        int getFilesize();

        long getUpdatetime();
    }

    public static final class ComicDetailChapterResponse extends GeneratedMessageV3 implements ComicDetailChapterResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        private static final ComicDetailChapterResponse DEFAULT_INSTANCE = new ComicDetailChapterResponse();
        private static final Parser<ComicDetailChapterResponse> PARSER = new Cdo<ComicDetailChapterResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponse.1
            @Override // com.google.protobuf.Parser
            public ComicDetailChapterResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicDetailChapterResponse(codedInputStream, cimplements);
            }
        };
        public static final int TITLE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<ComicDetailChapterInfoResponse> data_;
        private byte memoizedIsInitialized;
        private volatile Object title_;

        public static ComicDetailChapterResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicDetailChapterResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicDetailChapterResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicDetailChapterResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicDetailChapterResponse)) {
                return super.equals(obj);
            }
            ComicDetailChapterResponse comicDetailChapterResponse = (ComicDetailChapterResponse) obj;
            return getTitle().equals(comicDetailChapterResponse.getTitle()) && getDataList().equals(comicDetailChapterResponse.getDataList()) && this.unknownFields.equals(comicDetailChapterResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public ComicDetailChapterInfoResponse getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public List<ComicDetailChapterInfoResponse> getDataList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public ComicDetailChapterInfoResponseOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public List<? extends ComicDetailChapterInfoResponseOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicDetailChapterResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = !getTitleBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.title_) + 0 : 0;
            for (int i2 = 0; i2 < this.data_.size(); i2++) {
                iComputeStringSize += Cnative.m20900synchronized(2, this.data_.get(i2));
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
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
            int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTitle().hashCode();
            if (getDataCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable.m19575new(ComicDetailChapterResponse.class, Builder.class);
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
            return new ComicDetailChapterResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 1, this.title_);
            }
            for (int i = 0; i < this.data_.size(); i++) {
                cnative.f0(2, this.data_.get(i));
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicDetailChapterResponseOrBuilder {
            private int bitField0_;
            private v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> dataBuilder_;
            private List<ComicDetailChapterInfoResponse> data_;
            private Object title_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new v0<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends ComicDetailChapterInfoResponse> iterable) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addData(ComicDetailChapterInfoResponse comicDetailChapterInfoResponse) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterInfoResponse);
                    ensureDataIsMutable();
                    this.data_.add(comicDetailChapterInfoResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicDetailChapterInfoResponse);
                }
                return this;
            }

            public ComicDetailChapterInfoResponse.Builder addDataBuilder() {
                return (ComicDetailChapterInfoResponse.Builder) getDataFieldBuilder().m21460for(ComicDetailChapterInfoResponse.getDefaultInstance());
            }

            public Builder clearData() {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearTitle() {
                this.title_ = ComicDetailChapterResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public ComicDetailChapterInfoResponse getData(int i) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicDetailChapterInfoResponse) v0Var.m21459final(i);
            }

            public ComicDetailChapterInfoResponse.Builder getDataBuilder(int i) {
                return (ComicDetailChapterInfoResponse.Builder) getDataFieldBuilder().m21454catch(i);
            }

            public List<ComicDetailChapterInfoResponse.Builder> getDataBuilderList() {
                return getDataFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public int getDataCount() {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public List<ComicDetailChapterInfoResponse> getDataList() {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.data_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public ComicDetailChapterInfoResponseOrBuilder getDataOrBuilder(int i) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicDetailChapterInfoResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public List<? extends ComicDetailChapterInfoResponseOrBuilder> getDataOrBuilderList() {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailChapterResponseOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable.m19575new(ComicDetailChapterResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setData(int i, ComicDetailChapterInfoResponse comicDetailChapterInfoResponse) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterInfoResponse);
                    ensureDataIsMutable();
                    this.data_.set(i, comicDetailChapterInfoResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicDetailChapterInfoResponse);
                }
                return this;
            }

            public Builder setTitle(String str) {
                Objects.requireNonNull(str);
                this.title_ = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.title_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.title_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailChapterResponse build() {
                ComicDetailChapterResponse comicDetailChapterResponseBuildPartial = buildPartial();
                if (comicDetailChapterResponseBuildPartial.isInitialized()) {
                    return comicDetailChapterResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicDetailChapterResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailChapterResponse buildPartial() {
                ComicDetailChapterResponse comicDetailChapterResponse = new ComicDetailChapterResponse(this);
                comicDetailChapterResponse.title_ = this.title_;
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var != null) {
                    comicDetailChapterResponse.data_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    comicDetailChapterResponse.data_ = this.data_;
                }
                onBuilt();
                return comicDetailChapterResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicDetailChapterResponse getDefaultInstanceForType() {
                return ComicDetailChapterResponse.getDefaultInstance();
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

            public ComicDetailChapterInfoResponse.Builder addDataBuilder(int i) {
                return (ComicDetailChapterInfoResponse.Builder) getDataFieldBuilder().m21462if(i, ComicDetailChapterInfoResponse.getDefaultInstance());
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
                this.title_ = "";
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
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
                this.title_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addData(int i, ComicDetailChapterInfoResponse comicDetailChapterInfoResponse) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterInfoResponse);
                    ensureDataIsMutable();
                    this.data_.add(i, comicDetailChapterInfoResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicDetailChapterInfoResponse);
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
                if (message instanceof ComicDetailChapterResponse) {
                    return mergeFrom((ComicDetailChapterResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i, ComicDetailChapterInfoResponse.Builder builder) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ComicDetailChapterResponse comicDetailChapterResponse) {
                if (comicDetailChapterResponse == ComicDetailChapterResponse.getDefaultInstance()) {
                    return this;
                }
                if (!comicDetailChapterResponse.getTitle().isEmpty()) {
                    this.title_ = comicDetailChapterResponse.title_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!comicDetailChapterResponse.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = comicDetailChapterResponse.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(comicDetailChapterResponse.data_);
                        }
                        onChanged();
                    }
                } else if (!comicDetailChapterResponse.data_.isEmpty()) {
                    if (!this.dataBuilder_.m21465public()) {
                        this.dataBuilder_.m21457do(comicDetailChapterResponse.data_);
                    } else {
                        this.dataBuilder_.m21461goto();
                        this.dataBuilder_ = null;
                        this.data_ = comicDetailChapterResponse.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(comicDetailChapterResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(ComicDetailChapterInfoResponse.Builder builder) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addData(int i, ComicDetailChapterInfoResponse.Builder builder) {
                v0<ComicDetailChapterInfoResponse, ComicDetailChapterInfoResponse.Builder, ComicDetailChapterInfoResponseOrBuilder> v0Var = this.dataBuilder_;
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
                ComicDetailChapterResponse comicDetailChapterResponse = null;
                try {
                    try {
                        ComicDetailChapterResponse comicDetailChapterResponse2 = (ComicDetailChapterResponse) ComicDetailChapterResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicDetailChapterResponse2 != null) {
                            mergeFrom(comicDetailChapterResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicDetailChapterResponse comicDetailChapterResponse3 = (ComicDetailChapterResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicDetailChapterResponse = comicDetailChapterResponse3;
                            if (comicDetailChapterResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicDetailChapterResponse != null) {
                        mergeFrom(comicDetailChapterResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicDetailChapterResponse comicDetailChapterResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicDetailChapterResponse);
        }

        public static ComicDetailChapterResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicDetailChapterResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicDetailChapterResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailChapterResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicDetailChapterResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicDetailChapterResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicDetailChapterResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            this.data_ = Collections.emptyList();
        }

        public static ComicDetailChapterResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicDetailChapterResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicDetailChapterResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicDetailChapterResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            if (iL == 10) {
                                this.title_ = codedInputStream.k();
                            } else if (iL != 18) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                if (!(z2 & true)) {
                                    this.data_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.data_.add((ComicDetailChapterInfoResponse) codedInputStream.mo18430interface(ComicDetailChapterInfoResponse.parser(), cimplements));
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

        public static ComicDetailChapterResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailChapterResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicDetailChapterResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailChapterResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicDetailChapterResponseOrBuilder extends MessageOrBuilder {
        ComicDetailChapterInfoResponse getData(int i);

        int getDataCount();

        List<ComicDetailChapterInfoResponse> getDataList();

        ComicDetailChapterInfoResponseOrBuilder getDataOrBuilder(int i);

        List<? extends ComicDetailChapterInfoResponseOrBuilder> getDataOrBuilderList();

        String getTitle();

        ByteString getTitleBytes();
    }

    public static final class ComicDetailInfoResponse extends GeneratedMessageV3 implements ComicDetailInfoResponseOrBuilder {
        public static final int AUTHORS_FIELD_NUMBER = 21;
        public static final int CHAPTERS_FIELD_NUMBER = 23;
        public static final int COMICPY_FIELD_NUMBER = 12;
        public static final int COPYRIGHT_FIELD_NUMBER = 10;
        public static final int COVER_FIELD_NUMBER = 6;
        public static final int DESCRIPTION_FIELD_NUMBER = 7;
        public static final int DIRECTION_FIELD_NUMBER = 3;
        public static final int FIRSTLETTER_FIELD_NUMBER = 11;
        public static final int HIDDEN_FIELD_NUMBER = 13;
        public static final int HITNUM_FIELD_NUMBER = 15;
        public static final int HOTNUM_FIELD_NUMBER = 14;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int ISDMZJ_FIELD_NUMBER = 5;
        public static final int ISHIDECHAPTER_FIELD_NUMBER = 26;
        public static final int ISLOCK_FIELD_NUMBER = 17;
        public static final int ISLONG_FIELD_NUMBER = 4;
        public static final int ISNEEDLOGIN_FIELD_NUMBER = 24;
        public static final int LASTUPDATECHAPTERID_FIELD_NUMBER = 18;
        public static final int LASTUPDATECHAPTERNAME_FIELD_NUMBER = 9;
        public static final int LASTUPDATETIME_FIELD_NUMBER = 8;
        public static final int STATUS_FIELD_NUMBER = 20;
        public static final int SUBSCRIBENUM_FIELD_NUMBER = 22;
        public static final int TITLE_FIELD_NUMBER = 2;
        public static final int TYPES_FIELD_NUMBER = 19;
        public static final int UID_FIELD_NUMBER = 16;
        private static final long serialVersionUID = 0;
        private List<ComicDetailTypeItemResponse> authors_;
        private List<ComicDetailChapterResponse> chapters_;
        private volatile Object comicPy_;
        private int copyright_;
        private volatile Object cover_;
        private volatile Object description_;
        private int direction_;
        private volatile Object firstLetter_;
        private int hidden_;
        private int hitNum_;
        private int hotNum_;
        private int id_;
        private int isDmzj_;
        private int isHideChapter_;
        private int isLock_;
        private int isNeedLogin_;
        private int islong_;
        private int lastUpdateChapterId_;
        private volatile Object lastUpdateChapterName_;
        private long lastUpdatetime_;
        private byte memoizedIsInitialized;
        private List<ComicDetailTypeItemResponse> status_;
        private int subscribeNum_;
        private volatile Object title_;
        private List<ComicDetailTypeItemResponse> types_;
        private int uid_;
        private static final ComicDetailInfoResponse DEFAULT_INSTANCE = new ComicDetailInfoResponse();
        private static final Parser<ComicDetailInfoResponse> PARSER = new Cdo<ComicDetailInfoResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponse.1
            @Override // com.google.protobuf.Parser
            public ComicDetailInfoResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicDetailInfoResponse(codedInputStream, cimplements);
            }
        };

        public static ComicDetailInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicDetailInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicDetailInfoResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicDetailInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicDetailInfoResponse)) {
                return super.equals(obj);
            }
            ComicDetailInfoResponse comicDetailInfoResponse = (ComicDetailInfoResponse) obj;
            return getId() == comicDetailInfoResponse.getId() && getTitle().equals(comicDetailInfoResponse.getTitle()) && getDirection() == comicDetailInfoResponse.getDirection() && getIslong() == comicDetailInfoResponse.getIslong() && getIsDmzj() == comicDetailInfoResponse.getIsDmzj() && getCover().equals(comicDetailInfoResponse.getCover()) && getDescription().equals(comicDetailInfoResponse.getDescription()) && getLastUpdatetime() == comicDetailInfoResponse.getLastUpdatetime() && getLastUpdateChapterName().equals(comicDetailInfoResponse.getLastUpdateChapterName()) && getCopyright() == comicDetailInfoResponse.getCopyright() && getFirstLetter().equals(comicDetailInfoResponse.getFirstLetter()) && getComicPy().equals(comicDetailInfoResponse.getComicPy()) && getHidden() == comicDetailInfoResponse.getHidden() && getHotNum() == comicDetailInfoResponse.getHotNum() && getHitNum() == comicDetailInfoResponse.getHitNum() && getUid() == comicDetailInfoResponse.getUid() && getIsLock() == comicDetailInfoResponse.getIsLock() && getLastUpdateChapterId() == comicDetailInfoResponse.getLastUpdateChapterId() && getTypesList().equals(comicDetailInfoResponse.getTypesList()) && getStatusList().equals(comicDetailInfoResponse.getStatusList()) && getAuthorsList().equals(comicDetailInfoResponse.getAuthorsList()) && getSubscribeNum() == comicDetailInfoResponse.getSubscribeNum() && getChaptersList().equals(comicDetailInfoResponse.getChaptersList()) && getIsNeedLogin() == comicDetailInfoResponse.getIsNeedLogin() && getIsHideChapter() == comicDetailInfoResponse.getIsHideChapter() && this.unknownFields.equals(comicDetailInfoResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponse getAuthors(int i) {
            return this.authors_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getAuthorsCount() {
            return this.authors_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<ComicDetailTypeItemResponse> getAuthorsList() {
            return this.authors_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponseOrBuilder getAuthorsOrBuilder(int i) {
            return this.authors_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<? extends ComicDetailTypeItemResponseOrBuilder> getAuthorsOrBuilderList() {
            return this.authors_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailChapterResponse getChapters(int i) {
            return this.chapters_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getChaptersCount() {
            return this.chapters_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<ComicDetailChapterResponse> getChaptersList() {
            return this.chapters_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailChapterResponseOrBuilder getChaptersOrBuilder(int i) {
            return this.chapters_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<? extends ComicDetailChapterResponseOrBuilder> getChaptersOrBuilderList() {
            return this.chapters_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getComicPy() {
            Object obj = this.comicPy_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.comicPy_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getComicPyBytes() {
            Object obj = this.comicPy_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.comicPy_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getCopyright() {
            return this.copyright_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getCover() {
            Object obj = this.cover_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cover_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getCoverBytes() {
            Object obj = this.cover_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cover_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getDescription() {
            Object obj = this.description_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.description_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getDescriptionBytes() {
            Object obj = this.description_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getDirection() {
            return this.direction_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getFirstLetter() {
            Object obj = this.firstLetter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.firstLetter_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getFirstLetterBytes() {
            Object obj = this.firstLetter_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.firstLetter_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getHidden() {
            return this.hidden_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getHitNum() {
            return this.hitNum_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getHotNum() {
            return this.hotNum_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getId() {
            return this.id_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getIsDmzj() {
            return this.isDmzj_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getIsHideChapter() {
            return this.isHideChapter_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getIsLock() {
            return this.isLock_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getIsNeedLogin() {
            return this.isNeedLogin_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getIslong() {
            return this.islong_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getLastUpdateChapterId() {
            return this.lastUpdateChapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getLastUpdateChapterName() {
            Object obj = this.lastUpdateChapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastUpdateChapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getLastUpdateChapterNameBytes() {
            Object obj = this.lastUpdateChapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public long getLastUpdatetime() {
            return this.lastUpdatetime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicDetailInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.id_;
            int iM20874abstract = i2 != 0 ? Cnative.m20874abstract(1, i2) + 0 : 0;
            if (!getTitleBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            int i3 = this.direction_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(3, i3);
            }
            int i4 = this.islong_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(4, i4);
            }
            int i5 = this.isDmzj_;
            if (i5 != 0) {
                iM20874abstract += Cnative.m20874abstract(5, i5);
            }
            if (!getCoverBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(6, this.cover_);
            }
            if (!getDescriptionBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(7, this.description_);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(8, j);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(9, this.lastUpdateChapterName_);
            }
            int i6 = this.copyright_;
            if (i6 != 0) {
                iM20874abstract += Cnative.m20874abstract(10, i6);
            }
            if (!getFirstLetterBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(11, this.firstLetter_);
            }
            if (!getComicPyBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(12, this.comicPy_);
            }
            int i7 = this.hidden_;
            if (i7 != 0) {
                iM20874abstract += Cnative.m20874abstract(13, i7);
            }
            int i8 = this.hotNum_;
            if (i8 != 0) {
                iM20874abstract += Cnative.m20874abstract(14, i8);
            }
            int i9 = this.hitNum_;
            if (i9 != 0) {
                iM20874abstract += Cnative.m20874abstract(15, i9);
            }
            int i10 = this.uid_;
            if (i10 != 0) {
                iM20874abstract += Cnative.m20874abstract(16, i10);
            }
            int i11 = this.isLock_;
            if (i11 != 0) {
                iM20874abstract += Cnative.m20874abstract(17, i11);
            }
            int i12 = this.lastUpdateChapterId_;
            if (i12 != 0) {
                iM20874abstract += Cnative.m20874abstract(18, i12);
            }
            for (int i13 = 0; i13 < this.types_.size(); i13++) {
                iM20874abstract += Cnative.m20900synchronized(19, this.types_.get(i13));
            }
            for (int i14 = 0; i14 < this.status_.size(); i14++) {
                iM20874abstract += Cnative.m20900synchronized(20, this.status_.get(i14));
            }
            for (int i15 = 0; i15 < this.authors_.size(); i15++) {
                iM20874abstract += Cnative.m20900synchronized(21, this.authors_.get(i15));
            }
            int i16 = this.subscribeNum_;
            if (i16 != 0) {
                iM20874abstract += Cnative.m20874abstract(22, i16);
            }
            for (int i17 = 0; i17 < this.chapters_.size(); i17++) {
                iM20874abstract += Cnative.m20900synchronized(23, this.chapters_.get(i17));
            }
            int i18 = this.isNeedLogin_;
            if (i18 != 0) {
                iM20874abstract += Cnative.m20874abstract(24, i18);
            }
            int i19 = this.isHideChapter_;
            if (i19 != 0) {
                iM20874abstract += Cnative.m20874abstract(26, i19);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponse getStatus(int i) {
            return this.status_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getStatusCount() {
            return this.status_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<ComicDetailTypeItemResponse> getStatusList() {
            return this.status_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponseOrBuilder getStatusOrBuilder(int i) {
            return this.status_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<? extends ComicDetailTypeItemResponseOrBuilder> getStatusOrBuilderList() {
            return this.status_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getSubscribeNum() {
            return this.subscribeNum_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponse getTypes(int i) {
            return this.types_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getTypesCount() {
            return this.types_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<ComicDetailTypeItemResponse> getTypesList() {
            return this.types_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public ComicDetailTypeItemResponseOrBuilder getTypesOrBuilder(int i) {
            return this.types_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public List<? extends ComicDetailTypeItemResponseOrBuilder> getTypesOrBuilderList() {
            return this.types_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
        public int getUid() {
            return this.uid_;
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getDirection()) * 37) + 4) * 53) + getIslong()) * 37) + 5) * 53) + getIsDmzj()) * 37) + 6) * 53) + getCover().hashCode()) * 37) + 7) * 53) + getDescription().hashCode()) * 37) + 8) * 53) + Internal.m19622native(getLastUpdatetime())) * 37) + 9) * 53) + getLastUpdateChapterName().hashCode()) * 37) + 10) * 53) + getCopyright()) * 37) + 11) * 53) + getFirstLetter().hashCode()) * 37) + 12) * 53) + getComicPy().hashCode()) * 37) + 13) * 53) + getHidden()) * 37) + 14) * 53) + getHotNum()) * 37) + 15) * 53) + getHitNum()) * 37) + 16) * 53) + getUid()) * 37) + 17) * 53) + getIsLock()) * 37) + 18) * 53) + getLastUpdateChapterId();
            if (getTypesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 19) * 53) + getTypesList().hashCode();
            }
            if (getStatusCount() > 0) {
                iHashCode = (((iHashCode * 37) + 20) * 53) + getStatusList().hashCode();
            }
            if (getAuthorsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 21) * 53) + getAuthorsList().hashCode();
            }
            int subscribeNum = (((iHashCode * 37) + 22) * 53) + getSubscribeNum();
            if (getChaptersCount() > 0) {
                subscribeNum = (((subscribeNum * 37) + 23) * 53) + getChaptersList().hashCode();
            }
            int isNeedLogin = (((((((((subscribeNum * 37) + 24) * 53) + getIsNeedLogin()) * 37) + 26) * 53) + getIsHideChapter()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = isNeedLogin;
            return isNeedLogin;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable.m19575new(ComicDetailInfoResponse.class, Builder.class);
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
            return new ComicDetailInfoResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.id_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.title_);
            }
            int i2 = this.direction_;
            if (i2 != 0) {
                cnative.writeInt32(3, i2);
            }
            int i3 = this.islong_;
            if (i3 != 0) {
                cnative.writeInt32(4, i3);
            }
            int i4 = this.isDmzj_;
            if (i4 != 0) {
                cnative.writeInt32(5, i4);
            }
            if (!getCoverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 6, this.cover_);
            }
            if (!getDescriptionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 7, this.description_);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                cnative.writeInt64(8, j);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 9, this.lastUpdateChapterName_);
            }
            int i5 = this.copyright_;
            if (i5 != 0) {
                cnative.writeInt32(10, i5);
            }
            if (!getFirstLetterBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 11, this.firstLetter_);
            }
            if (!getComicPyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 12, this.comicPy_);
            }
            int i6 = this.hidden_;
            if (i6 != 0) {
                cnative.writeInt32(13, i6);
            }
            int i7 = this.hotNum_;
            if (i7 != 0) {
                cnative.writeInt32(14, i7);
            }
            int i8 = this.hitNum_;
            if (i8 != 0) {
                cnative.writeInt32(15, i8);
            }
            int i9 = this.uid_;
            if (i9 != 0) {
                cnative.writeInt32(16, i9);
            }
            int i10 = this.isLock_;
            if (i10 != 0) {
                cnative.writeInt32(17, i10);
            }
            int i11 = this.lastUpdateChapterId_;
            if (i11 != 0) {
                cnative.writeInt32(18, i11);
            }
            for (int i12 = 0; i12 < this.types_.size(); i12++) {
                cnative.f0(19, this.types_.get(i12));
            }
            for (int i13 = 0; i13 < this.status_.size(); i13++) {
                cnative.f0(20, this.status_.get(i13));
            }
            for (int i14 = 0; i14 < this.authors_.size(); i14++) {
                cnative.f0(21, this.authors_.get(i14));
            }
            int i15 = this.subscribeNum_;
            if (i15 != 0) {
                cnative.writeInt32(22, i15);
            }
            for (int i16 = 0; i16 < this.chapters_.size(); i16++) {
                cnative.f0(23, this.chapters_.get(i16));
            }
            int i17 = this.isNeedLogin_;
            if (i17 != 0) {
                cnative.writeInt32(24, i17);
            }
            int i18 = this.isHideChapter_;
            if (i18 != 0) {
                cnative.writeInt32(26, i18);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicDetailInfoResponseOrBuilder {
            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> authorsBuilder_;
            private List<ComicDetailTypeItemResponse> authors_;
            private int bitField0_;
            private v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> chaptersBuilder_;
            private List<ComicDetailChapterResponse> chapters_;
            private Object comicPy_;
            private int copyright_;
            private Object cover_;
            private Object description_;
            private int direction_;
            private Object firstLetter_;
            private int hidden_;
            private int hitNum_;
            private int hotNum_;
            private int id_;
            private int isDmzj_;
            private int isHideChapter_;
            private int isLock_;
            private int isNeedLogin_;
            private int islong_;
            private int lastUpdateChapterId_;
            private Object lastUpdateChapterName_;
            private long lastUpdatetime_;
            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> statusBuilder_;
            private List<ComicDetailTypeItemResponse> status_;
            private int subscribeNum_;
            private Object title_;
            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> typesBuilder_;
            private List<ComicDetailTypeItemResponse> types_;
            private int uid_;

            private void ensureAuthorsIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.authors_ = new ArrayList(this.authors_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureChaptersIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.chapters_ = new ArrayList(this.chapters_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureStatusIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.status_ = new ArrayList(this.status_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureTypesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.types_ = new ArrayList(this.types_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> getAuthorsFieldBuilder() {
                if (this.authorsBuilder_ == null) {
                    this.authorsBuilder_ = new v0<>(this.authors_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.authors_ = null;
                }
                return this.authorsBuilder_;
            }

            private v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> getChaptersFieldBuilder() {
                if (this.chaptersBuilder_ == null) {
                    this.chaptersBuilder_ = new v0<>(this.chapters_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.chapters_ = null;
                }
                return this.chaptersBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor;
            }

            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> getStatusFieldBuilder() {
                if (this.statusBuilder_ == null) {
                    this.statusBuilder_ = new v0<>(this.status_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.status_ = null;
                }
                return this.statusBuilder_;
            }

            private v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> getTypesFieldBuilder() {
                if (this.typesBuilder_ == null) {
                    this.typesBuilder_ = new v0<>(this.types_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.types_ = null;
                }
                return this.typesBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getTypesFieldBuilder();
                    getStatusFieldBuilder();
                    getAuthorsFieldBuilder();
                    getChaptersFieldBuilder();
                }
            }

            public Builder addAllAuthors(Iterable<? extends ComicDetailTypeItemResponse> iterable) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    ensureAuthorsIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.authors_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addAllChapters(Iterable<? extends ComicDetailChapterResponse> iterable) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.chapters_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addAllStatus(Iterable<? extends ComicDetailTypeItemResponse> iterable) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    ensureStatusIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.status_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addAllTypes(Iterable<? extends ComicDetailTypeItemResponse> iterable) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    ensureTypesIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.types_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addAuthors(ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureAuthorsIsMutable();
                    this.authors_.add(comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicDetailTypeItemResponse);
                }
                return this;
            }

            public ComicDetailTypeItemResponse.Builder addAuthorsBuilder() {
                return (ComicDetailTypeItemResponse.Builder) getAuthorsFieldBuilder().m21460for(ComicDetailTypeItemResponse.getDefaultInstance());
            }

            public Builder addChapters(ComicDetailChapterResponse comicDetailChapterResponse) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.add(comicDetailChapterResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicDetailChapterResponse);
                }
                return this;
            }

            public ComicDetailChapterResponse.Builder addChaptersBuilder() {
                return (ComicDetailChapterResponse.Builder) getChaptersFieldBuilder().m21460for(ComicDetailChapterResponse.getDefaultInstance());
            }

            public Builder addStatus(ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureStatusIsMutable();
                    this.status_.add(comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicDetailTypeItemResponse);
                }
                return this;
            }

            public ComicDetailTypeItemResponse.Builder addStatusBuilder() {
                return (ComicDetailTypeItemResponse.Builder) getStatusFieldBuilder().m21460for(ComicDetailTypeItemResponse.getDefaultInstance());
            }

            public Builder addTypes(ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureTypesIsMutable();
                    this.types_.add(comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicDetailTypeItemResponse);
                }
                return this;
            }

            public ComicDetailTypeItemResponse.Builder addTypesBuilder() {
                return (ComicDetailTypeItemResponse.Builder) getTypesFieldBuilder().m21460for(ComicDetailTypeItemResponse.getDefaultInstance());
            }

            public Builder clearAuthors() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    this.authors_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearChapters() {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    this.chapters_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearComicPy() {
                this.comicPy_ = ComicDetailInfoResponse.getDefaultInstance().getComicPy();
                onChanged();
                return this;
            }

            public Builder clearCopyright() {
                this.copyright_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCover() {
                this.cover_ = ComicDetailInfoResponse.getDefaultInstance().getCover();
                onChanged();
                return this;
            }

            public Builder clearDescription() {
                this.description_ = ComicDetailInfoResponse.getDefaultInstance().getDescription();
                onChanged();
                return this;
            }

            public Builder clearDirection() {
                this.direction_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFirstLetter() {
                this.firstLetter_ = ComicDetailInfoResponse.getDefaultInstance().getFirstLetter();
                onChanged();
                return this;
            }

            public Builder clearHidden() {
                this.hidden_ = 0;
                onChanged();
                return this;
            }

            public Builder clearHitNum() {
                this.hitNum_ = 0;
                onChanged();
                return this;
            }

            public Builder clearHotNum() {
                this.hotNum_ = 0;
                onChanged();
                return this;
            }

            public Builder clearId() {
                this.id_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIsDmzj() {
                this.isDmzj_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIsHideChapter() {
                this.isHideChapter_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIsLock() {
                this.isLock_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIsNeedLogin() {
                this.isNeedLogin_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIslong() {
                this.islong_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterId() {
                this.lastUpdateChapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterName() {
                this.lastUpdateChapterName_ = ComicDetailInfoResponse.getDefaultInstance().getLastUpdateChapterName();
                onChanged();
                return this;
            }

            public Builder clearLastUpdatetime() {
                this.lastUpdatetime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    this.status_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearSubscribeNum() {
                this.subscribeNum_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.title_ = ComicDetailInfoResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearTypes() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    this.types_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponse getAuthors(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                return v0Var == null ? this.authors_.get(i) : (ComicDetailTypeItemResponse) v0Var.m21459final(i);
            }

            public ComicDetailTypeItemResponse.Builder getAuthorsBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getAuthorsFieldBuilder().m21454catch(i);
            }

            public List<ComicDetailTypeItemResponse.Builder> getAuthorsBuilderList() {
                return getAuthorsFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getAuthorsCount() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                return v0Var == null ? this.authors_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<ComicDetailTypeItemResponse> getAuthorsList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.authors_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponseOrBuilder getAuthorsOrBuilder(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                return v0Var == null ? this.authors_.get(i) : (ComicDetailTypeItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<? extends ComicDetailTypeItemResponseOrBuilder> getAuthorsOrBuilderList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.authors_);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailChapterResponse getChapters(int i) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.get(i) : (ComicDetailChapterResponse) v0Var.m21459final(i);
            }

            public ComicDetailChapterResponse.Builder getChaptersBuilder(int i) {
                return (ComicDetailChapterResponse.Builder) getChaptersFieldBuilder().m21454catch(i);
            }

            public List<ComicDetailChapterResponse.Builder> getChaptersBuilderList() {
                return getChaptersFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getChaptersCount() {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<ComicDetailChapterResponse> getChaptersList() {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.chapters_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailChapterResponseOrBuilder getChaptersOrBuilder(int i) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var == null ? this.chapters_.get(i) : (ComicDetailChapterResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<? extends ComicDetailChapterResponseOrBuilder> getChaptersOrBuilderList() {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.chapters_);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getComicPy() {
                Object obj = this.comicPy_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.comicPy_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getComicPyBytes() {
                Object obj = this.comicPy_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.comicPy_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getCopyright() {
                return this.copyright_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getCover() {
                Object obj = this.cover_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cover_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getCoverBytes() {
                Object obj = this.cover_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cover_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getDescription() {
                Object obj = this.description_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.description_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getDescriptionBytes() {
                Object obj = this.description_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.description_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getDirection() {
                return this.direction_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getFirstLetter() {
                Object obj = this.firstLetter_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.firstLetter_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getFirstLetterBytes() {
                Object obj = this.firstLetter_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.firstLetter_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getHidden() {
                return this.hidden_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getHitNum() {
                return this.hitNum_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getHotNum() {
                return this.hotNum_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getId() {
                return this.id_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getIsDmzj() {
                return this.isDmzj_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getIsHideChapter() {
                return this.isHideChapter_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getIsLock() {
                return this.isLock_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getIsNeedLogin() {
                return this.isNeedLogin_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getIslong() {
                return this.islong_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getLastUpdateChapterId() {
                return this.lastUpdateChapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getLastUpdateChapterName() {
                Object obj = this.lastUpdateChapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastUpdateChapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getLastUpdateChapterNameBytes() {
                Object obj = this.lastUpdateChapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public long getLastUpdatetime() {
                return this.lastUpdatetime_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponse getStatus(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                return v0Var == null ? this.status_.get(i) : (ComicDetailTypeItemResponse) v0Var.m21459final(i);
            }

            public ComicDetailTypeItemResponse.Builder getStatusBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getStatusFieldBuilder().m21454catch(i);
            }

            public List<ComicDetailTypeItemResponse.Builder> getStatusBuilderList() {
                return getStatusFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getStatusCount() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                return v0Var == null ? this.status_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<ComicDetailTypeItemResponse> getStatusList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.status_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponseOrBuilder getStatusOrBuilder(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                return v0Var == null ? this.status_.get(i) : (ComicDetailTypeItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<? extends ComicDetailTypeItemResponseOrBuilder> getStatusOrBuilderList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.status_);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getSubscribeNum() {
                return this.subscribeNum_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponse getTypes(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                return v0Var == null ? this.types_.get(i) : (ComicDetailTypeItemResponse) v0Var.m21459final(i);
            }

            public ComicDetailTypeItemResponse.Builder getTypesBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getTypesFieldBuilder().m21454catch(i);
            }

            public List<ComicDetailTypeItemResponse.Builder> getTypesBuilderList() {
                return getTypesFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getTypesCount() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                return v0Var == null ? this.types_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<ComicDetailTypeItemResponse> getTypesList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.types_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public ComicDetailTypeItemResponseOrBuilder getTypesOrBuilder(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                return v0Var == null ? this.types_.get(i) : (ComicDetailTypeItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public List<? extends ComicDetailTypeItemResponseOrBuilder> getTypesOrBuilderList() {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.types_);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailInfoResponseOrBuilder
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable.m19575new(ComicDetailInfoResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeAuthors(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    ensureAuthorsIsMutable();
                    this.authors_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder removeChapters(int i) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder removeStatus(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    ensureStatusIsMutable();
                    this.status_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder removeTypes(int i) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    ensureTypesIsMutable();
                    this.types_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setAuthors(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureAuthorsIsMutable();
                    this.authors_.set(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicDetailTypeItemResponse);
                }
                return this;
            }

            public Builder setChapters(int i, ComicDetailChapterResponse comicDetailChapterResponse) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.set(i, comicDetailChapterResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicDetailChapterResponse);
                }
                return this;
            }

            public Builder setComicPy(String str) {
                Objects.requireNonNull(str);
                this.comicPy_ = str;
                onChanged();
                return this;
            }

            public Builder setComicPyBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.comicPy_ = byteString;
                onChanged();
                return this;
            }

            public Builder setCopyright(int i) {
                this.copyright_ = i;
                onChanged();
                return this;
            }

            public Builder setCover(String str) {
                Objects.requireNonNull(str);
                this.cover_ = str;
                onChanged();
                return this;
            }

            public Builder setCoverBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.cover_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDescription(String str) {
                Objects.requireNonNull(str);
                this.description_ = str;
                onChanged();
                return this;
            }

            public Builder setDescriptionBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.description_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDirection(int i) {
                this.direction_ = i;
                onChanged();
                return this;
            }

            public Builder setFirstLetter(String str) {
                Objects.requireNonNull(str);
                this.firstLetter_ = str;
                onChanged();
                return this;
            }

            public Builder setFirstLetterBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.firstLetter_ = byteString;
                onChanged();
                return this;
            }

            public Builder setHidden(int i) {
                this.hidden_ = i;
                onChanged();
                return this;
            }

            public Builder setHitNum(int i) {
                this.hitNum_ = i;
                onChanged();
                return this;
            }

            public Builder setHotNum(int i) {
                this.hotNum_ = i;
                onChanged();
                return this;
            }

            public Builder setId(int i) {
                this.id_ = i;
                onChanged();
                return this;
            }

            public Builder setIsDmzj(int i) {
                this.isDmzj_ = i;
                onChanged();
                return this;
            }

            public Builder setIsHideChapter(int i) {
                this.isHideChapter_ = i;
                onChanged();
                return this;
            }

            public Builder setIsLock(int i) {
                this.isLock_ = i;
                onChanged();
                return this;
            }

            public Builder setIsNeedLogin(int i) {
                this.isNeedLogin_ = i;
                onChanged();
                return this;
            }

            public Builder setIslong(int i) {
                this.islong_ = i;
                onChanged();
                return this;
            }

            public Builder setLastUpdateChapterId(int i) {
                this.lastUpdateChapterId_ = i;
                onChanged();
                return this;
            }

            public Builder setLastUpdateChapterName(String str) {
                Objects.requireNonNull(str);
                this.lastUpdateChapterName_ = str;
                onChanged();
                return this;
            }

            public Builder setLastUpdateChapterNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.lastUpdateChapterName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setLastUpdatetime(long j) {
                this.lastUpdatetime_ = j;
                onChanged();
                return this;
            }

            public Builder setStatus(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureStatusIsMutable();
                    this.status_.set(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicDetailTypeItemResponse);
                }
                return this;
            }

            public Builder setSubscribeNum(int i) {
                this.subscribeNum_ = i;
                onChanged();
                return this;
            }

            public Builder setTitle(String str) {
                Objects.requireNonNull(str);
                this.title_ = str;
                onChanged();
                return this;
            }

            public Builder setTitleBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.title_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTypes(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureTypesIsMutable();
                    this.types_.set(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicDetailTypeItemResponse);
                }
                return this;
            }

            public Builder setUid(int i) {
                this.uid_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.title_ = "";
                this.cover_ = "";
                this.description_ = "";
                this.lastUpdateChapterName_ = "";
                this.firstLetter_ = "";
                this.comicPy_ = "";
                this.types_ = Collections.emptyList();
                this.status_ = Collections.emptyList();
                this.authors_ = Collections.emptyList();
                this.chapters_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailInfoResponse build() {
                ComicDetailInfoResponse comicDetailInfoResponseBuildPartial = buildPartial();
                if (comicDetailInfoResponseBuildPartial.isInitialized()) {
                    return comicDetailInfoResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicDetailInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailInfoResponse buildPartial() {
                ComicDetailInfoResponse comicDetailInfoResponse = new ComicDetailInfoResponse(this);
                comicDetailInfoResponse.id_ = this.id_;
                comicDetailInfoResponse.title_ = this.title_;
                comicDetailInfoResponse.direction_ = this.direction_;
                comicDetailInfoResponse.islong_ = this.islong_;
                comicDetailInfoResponse.isDmzj_ = this.isDmzj_;
                comicDetailInfoResponse.cover_ = this.cover_;
                comicDetailInfoResponse.description_ = this.description_;
                comicDetailInfoResponse.lastUpdatetime_ = this.lastUpdatetime_;
                comicDetailInfoResponse.lastUpdateChapterName_ = this.lastUpdateChapterName_;
                comicDetailInfoResponse.copyright_ = this.copyright_;
                comicDetailInfoResponse.firstLetter_ = this.firstLetter_;
                comicDetailInfoResponse.comicPy_ = this.comicPy_;
                comicDetailInfoResponse.hidden_ = this.hidden_;
                comicDetailInfoResponse.hotNum_ = this.hotNum_;
                comicDetailInfoResponse.hitNum_ = this.hitNum_;
                comicDetailInfoResponse.uid_ = this.uid_;
                comicDetailInfoResponse.isLock_ = this.isLock_;
                comicDetailInfoResponse.lastUpdateChapterId_ = this.lastUpdateChapterId_;
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var != null) {
                    comicDetailInfoResponse.types_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.types_ = Collections.unmodifiableList(this.types_);
                        this.bitField0_ &= -2;
                    }
                    comicDetailInfoResponse.types_ = this.types_;
                }
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var2 = this.statusBuilder_;
                if (v0Var2 != null) {
                    comicDetailInfoResponse.status_ = v0Var2.m21453case();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.status_ = Collections.unmodifiableList(this.status_);
                        this.bitField0_ &= -3;
                    }
                    comicDetailInfoResponse.status_ = this.status_;
                }
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var3 = this.authorsBuilder_;
                if (v0Var3 != null) {
                    comicDetailInfoResponse.authors_ = v0Var3.m21453case();
                } else {
                    if ((this.bitField0_ & 4) != 0) {
                        this.authors_ = Collections.unmodifiableList(this.authors_);
                        this.bitField0_ &= -5;
                    }
                    comicDetailInfoResponse.authors_ = this.authors_;
                }
                comicDetailInfoResponse.subscribeNum_ = this.subscribeNum_;
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var4 = this.chaptersBuilder_;
                if (v0Var4 != null) {
                    comicDetailInfoResponse.chapters_ = v0Var4.m21453case();
                } else {
                    if ((this.bitField0_ & 8) != 0) {
                        this.chapters_ = Collections.unmodifiableList(this.chapters_);
                        this.bitField0_ &= -9;
                    }
                    comicDetailInfoResponse.chapters_ = this.chapters_;
                }
                comicDetailInfoResponse.isNeedLogin_ = this.isNeedLogin_;
                comicDetailInfoResponse.isHideChapter_ = this.isHideChapter_;
                onBuilt();
                return comicDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicDetailInfoResponse getDefaultInstanceForType() {
                return ComicDetailInfoResponse.getDefaultInstance();
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

            public ComicDetailTypeItemResponse.Builder addAuthorsBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getAuthorsFieldBuilder().m21462if(i, ComicDetailTypeItemResponse.getDefaultInstance());
            }

            public ComicDetailChapterResponse.Builder addChaptersBuilder(int i) {
                return (ComicDetailChapterResponse.Builder) getChaptersFieldBuilder().m21462if(i, ComicDetailChapterResponse.getDefaultInstance());
            }

            public ComicDetailTypeItemResponse.Builder addStatusBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getStatusFieldBuilder().m21462if(i, ComicDetailTypeItemResponse.getDefaultInstance());
            }

            public ComicDetailTypeItemResponse.Builder addTypesBuilder(int i) {
                return (ComicDetailTypeItemResponse.Builder) getTypesFieldBuilder().m21462if(i, ComicDetailTypeItemResponse.getDefaultInstance());
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
                this.id_ = 0;
                this.title_ = "";
                this.direction_ = 0;
                this.islong_ = 0;
                this.isDmzj_ = 0;
                this.cover_ = "";
                this.description_ = "";
                this.lastUpdatetime_ = 0L;
                this.lastUpdateChapterName_ = "";
                this.copyright_ = 0;
                this.firstLetter_ = "";
                this.comicPy_ = "";
                this.hidden_ = 0;
                this.hotNum_ = 0;
                this.hitNum_ = 0;
                this.uid_ = 0;
                this.isLock_ = 0;
                this.lastUpdateChapterId_ = 0;
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    this.types_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    v0Var.m21458else();
                }
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var2 = this.statusBuilder_;
                if (v0Var2 == null) {
                    this.status_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    v0Var2.m21458else();
                }
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var3 = this.authorsBuilder_;
                if (v0Var3 == null) {
                    this.authors_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    v0Var3.m21458else();
                }
                this.subscribeNum_ = 0;
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var4 = this.chaptersBuilder_;
                if (v0Var4 == null) {
                    this.chapters_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    v0Var4.m21458else();
                }
                this.isNeedLogin_ = 0;
                this.isHideChapter_ = 0;
                return this;
            }

            public Builder addAuthors(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureAuthorsIsMutable();
                    this.authors_.add(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicDetailTypeItemResponse);
                }
                return this;
            }

            public Builder addChapters(int i, ComicDetailChapterResponse comicDetailChapterResponse) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailChapterResponse);
                    ensureChaptersIsMutable();
                    this.chapters_.add(i, comicDetailChapterResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicDetailChapterResponse);
                }
                return this;
            }

            public Builder addStatus(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureStatusIsMutable();
                    this.status_.add(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicDetailTypeItemResponse);
                }
                return this;
            }

            public Builder addTypes(int i, ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicDetailTypeItemResponse);
                    ensureTypesIsMutable();
                    this.types_.add(i, comicDetailTypeItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicDetailTypeItemResponse);
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
                if (message instanceof ComicDetailInfoResponse) {
                    return mergeFrom((ComicDetailInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setAuthors(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    ensureAuthorsIsMutable();
                    this.authors_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder setChapters(int i, ComicDetailChapterResponse.Builder builder) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder setStatus(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    ensureStatusIsMutable();
                    this.status_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder setTypes(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    ensureTypesIsMutable();
                    this.types_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ComicDetailInfoResponse comicDetailInfoResponse) {
                if (comicDetailInfoResponse == ComicDetailInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicDetailInfoResponse.getId() != 0) {
                    setId(comicDetailInfoResponse.getId());
                }
                if (!comicDetailInfoResponse.getTitle().isEmpty()) {
                    this.title_ = comicDetailInfoResponse.title_;
                    onChanged();
                }
                if (comicDetailInfoResponse.getDirection() != 0) {
                    setDirection(comicDetailInfoResponse.getDirection());
                }
                if (comicDetailInfoResponse.getIslong() != 0) {
                    setIslong(comicDetailInfoResponse.getIslong());
                }
                if (comicDetailInfoResponse.getIsDmzj() != 0) {
                    setIsDmzj(comicDetailInfoResponse.getIsDmzj());
                }
                if (!comicDetailInfoResponse.getCover().isEmpty()) {
                    this.cover_ = comicDetailInfoResponse.cover_;
                    onChanged();
                }
                if (!comicDetailInfoResponse.getDescription().isEmpty()) {
                    this.description_ = comicDetailInfoResponse.description_;
                    onChanged();
                }
                if (comicDetailInfoResponse.getLastUpdatetime() != 0) {
                    setLastUpdatetime(comicDetailInfoResponse.getLastUpdatetime());
                }
                if (!comicDetailInfoResponse.getLastUpdateChapterName().isEmpty()) {
                    this.lastUpdateChapterName_ = comicDetailInfoResponse.lastUpdateChapterName_;
                    onChanged();
                }
                if (comicDetailInfoResponse.getCopyright() != 0) {
                    setCopyright(comicDetailInfoResponse.getCopyright());
                }
                if (!comicDetailInfoResponse.getFirstLetter().isEmpty()) {
                    this.firstLetter_ = comicDetailInfoResponse.firstLetter_;
                    onChanged();
                }
                if (!comicDetailInfoResponse.getComicPy().isEmpty()) {
                    this.comicPy_ = comicDetailInfoResponse.comicPy_;
                    onChanged();
                }
                if (comicDetailInfoResponse.getHidden() != 0) {
                    setHidden(comicDetailInfoResponse.getHidden());
                }
                if (comicDetailInfoResponse.getHotNum() != 0) {
                    setHotNum(comicDetailInfoResponse.getHotNum());
                }
                if (comicDetailInfoResponse.getHitNum() != 0) {
                    setHitNum(comicDetailInfoResponse.getHitNum());
                }
                if (comicDetailInfoResponse.getUid() != 0) {
                    setUid(comicDetailInfoResponse.getUid());
                }
                if (comicDetailInfoResponse.getIsLock() != 0) {
                    setIsLock(comicDetailInfoResponse.getIsLock());
                }
                if (comicDetailInfoResponse.getLastUpdateChapterId() != 0) {
                    setLastUpdateChapterId(comicDetailInfoResponse.getLastUpdateChapterId());
                }
                if (this.typesBuilder_ == null) {
                    if (!comicDetailInfoResponse.types_.isEmpty()) {
                        if (this.types_.isEmpty()) {
                            this.types_ = comicDetailInfoResponse.types_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureTypesIsMutable();
                            this.types_.addAll(comicDetailInfoResponse.types_);
                        }
                        onChanged();
                    }
                } else if (!comicDetailInfoResponse.types_.isEmpty()) {
                    if (!this.typesBuilder_.m21465public()) {
                        this.typesBuilder_.m21457do(comicDetailInfoResponse.types_);
                    } else {
                        this.typesBuilder_.m21461goto();
                        this.typesBuilder_ = null;
                        this.types_ = comicDetailInfoResponse.types_;
                        this.bitField0_ &= -2;
                        this.typesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getTypesFieldBuilder() : null;
                    }
                }
                if (this.statusBuilder_ == null) {
                    if (!comicDetailInfoResponse.status_.isEmpty()) {
                        if (this.status_.isEmpty()) {
                            this.status_ = comicDetailInfoResponse.status_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureStatusIsMutable();
                            this.status_.addAll(comicDetailInfoResponse.status_);
                        }
                        onChanged();
                    }
                } else if (!comicDetailInfoResponse.status_.isEmpty()) {
                    if (!this.statusBuilder_.m21465public()) {
                        this.statusBuilder_.m21457do(comicDetailInfoResponse.status_);
                    } else {
                        this.statusBuilder_.m21461goto();
                        this.statusBuilder_ = null;
                        this.status_ = comicDetailInfoResponse.status_;
                        this.bitField0_ &= -3;
                        this.statusBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getStatusFieldBuilder() : null;
                    }
                }
                if (this.authorsBuilder_ == null) {
                    if (!comicDetailInfoResponse.authors_.isEmpty()) {
                        if (this.authors_.isEmpty()) {
                            this.authors_ = comicDetailInfoResponse.authors_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureAuthorsIsMutable();
                            this.authors_.addAll(comicDetailInfoResponse.authors_);
                        }
                        onChanged();
                    }
                } else if (!comicDetailInfoResponse.authors_.isEmpty()) {
                    if (!this.authorsBuilder_.m21465public()) {
                        this.authorsBuilder_.m21457do(comicDetailInfoResponse.authors_);
                    } else {
                        this.authorsBuilder_.m21461goto();
                        this.authorsBuilder_ = null;
                        this.authors_ = comicDetailInfoResponse.authors_;
                        this.bitField0_ &= -5;
                        this.authorsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAuthorsFieldBuilder() : null;
                    }
                }
                if (comicDetailInfoResponse.getSubscribeNum() != 0) {
                    setSubscribeNum(comicDetailInfoResponse.getSubscribeNum());
                }
                if (this.chaptersBuilder_ == null) {
                    if (!comicDetailInfoResponse.chapters_.isEmpty()) {
                        if (this.chapters_.isEmpty()) {
                            this.chapters_ = comicDetailInfoResponse.chapters_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureChaptersIsMutable();
                            this.chapters_.addAll(comicDetailInfoResponse.chapters_);
                        }
                        onChanged();
                    }
                } else if (!comicDetailInfoResponse.chapters_.isEmpty()) {
                    if (!this.chaptersBuilder_.m21465public()) {
                        this.chaptersBuilder_.m21457do(comicDetailInfoResponse.chapters_);
                    } else {
                        this.chaptersBuilder_.m21461goto();
                        this.chaptersBuilder_ = null;
                        this.chapters_ = comicDetailInfoResponse.chapters_;
                        this.bitField0_ &= -9;
                        this.chaptersBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getChaptersFieldBuilder() : null;
                    }
                }
                if (comicDetailInfoResponse.getIsNeedLogin() != 0) {
                    setIsNeedLogin(comicDetailInfoResponse.getIsNeedLogin());
                }
                if (comicDetailInfoResponse.getIsHideChapter() != 0) {
                    setIsHideChapter(comicDetailInfoResponse.getIsHideChapter());
                }
                mergeUnknownFields(comicDetailInfoResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addAuthors(ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    ensureAuthorsIsMutable();
                    this.authors_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addChapters(ComicDetailChapterResponse.Builder builder) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addStatus(ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    ensureStatusIsMutable();
                    this.status_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addTypes(ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    ensureTypesIsMutable();
                    this.types_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.title_ = "";
                this.cover_ = "";
                this.description_ = "";
                this.lastUpdateChapterName_ = "";
                this.firstLetter_ = "";
                this.comicPy_ = "";
                this.types_ = Collections.emptyList();
                this.status_ = Collections.emptyList();
                this.authors_ = Collections.emptyList();
                this.chapters_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addAuthors(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.authorsBuilder_;
                if (v0Var == null) {
                    ensureAuthorsIsMutable();
                    this.authors_.add(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, builder.build());
                }
                return this;
            }

            public Builder addChapters(int i, ComicDetailChapterResponse.Builder builder) {
                v0<ComicDetailChapterResponse, ComicDetailChapterResponse.Builder, ComicDetailChapterResponseOrBuilder> v0Var = this.chaptersBuilder_;
                if (v0Var == null) {
                    ensureChaptersIsMutable();
                    this.chapters_.add(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, builder.build());
                }
                return this;
            }

            public Builder addStatus(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.statusBuilder_;
                if (v0Var == null) {
                    ensureStatusIsMutable();
                    this.status_.add(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21464new(i, builder.build());
                }
                return this;
            }

            public Builder addTypes(int i, ComicDetailTypeItemResponse.Builder builder) {
                v0<ComicDetailTypeItemResponse, ComicDetailTypeItemResponse.Builder, ComicDetailTypeItemResponseOrBuilder> v0Var = this.typesBuilder_;
                if (v0Var == null) {
                    ensureTypesIsMutable();
                    this.types_.add(i, builder.build());
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
                ComicDetailInfoResponse comicDetailInfoResponse = null;
                try {
                    try {
                        ComicDetailInfoResponse comicDetailInfoResponse2 = (ComicDetailInfoResponse) ComicDetailInfoResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicDetailInfoResponse2 != null) {
                            mergeFrom(comicDetailInfoResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicDetailInfoResponse comicDetailInfoResponse3 = (ComicDetailInfoResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicDetailInfoResponse = comicDetailInfoResponse3;
                            if (comicDetailInfoResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicDetailInfoResponse != null) {
                        mergeFrom(comicDetailInfoResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicDetailInfoResponse comicDetailInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicDetailInfoResponse);
        }

        public static ComicDetailInfoResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicDetailInfoResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicDetailInfoResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailInfoResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicDetailInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicDetailInfoResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicDetailInfoResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            this.cover_ = "";
            this.description_ = "";
            this.lastUpdateChapterName_ = "";
            this.firstLetter_ = "";
            this.comicPy_ = "";
            this.types_ = Collections.emptyList();
            this.status_ = Collections.emptyList();
            this.authors_ = Collections.emptyList();
            this.chapters_ = Collections.emptyList();
        }

        public static ComicDetailInfoResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicDetailInfoResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicDetailInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ComicDetailInfoResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicDetailInfoResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }

        private ComicDetailInfoResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        switch (iL) {
                            case 0:
                                z = true;
                            case 8:
                                this.id_ = codedInputStream.mo18439strictfp();
                            case 18:
                                this.title_ = codedInputStream.k();
                            case 24:
                                this.direction_ = codedInputStream.mo18439strictfp();
                            case 32:
                                this.islong_ = codedInputStream.mo18439strictfp();
                            case 40:
                                this.isDmzj_ = codedInputStream.mo18439strictfp();
                            case 50:
                                this.cover_ = codedInputStream.k();
                            case 58:
                                this.description_ = codedInputStream.k();
                            case 64:
                                this.lastUpdatetime_ = codedInputStream.mo18446volatile();
                            case 74:
                                this.lastUpdateChapterName_ = codedInputStream.k();
                            case 80:
                                this.copyright_ = codedInputStream.mo18439strictfp();
                            case 90:
                                this.firstLetter_ = codedInputStream.k();
                            case 98:
                                this.comicPy_ = codedInputStream.k();
                            case 104:
                                this.hidden_ = codedInputStream.mo18439strictfp();
                            case 112:
                                this.hotNum_ = codedInputStream.mo18439strictfp();
                            case 120:
                                this.hitNum_ = codedInputStream.mo18439strictfp();
                            case 128:
                                this.uid_ = codedInputStream.mo18439strictfp();
                            case 136:
                                this.isLock_ = codedInputStream.mo18439strictfp();
                            case 144:
                                this.lastUpdateChapterId_ = codedInputStream.mo18439strictfp();
                            case 154:
                                if ((i & 1) == 0) {
                                    this.types_ = new ArrayList();
                                    i |= 1;
                                }
                                this.types_.add((ComicDetailTypeItemResponse) codedInputStream.mo18430interface(ComicDetailTypeItemResponse.parser(), cimplements));
                            case 162:
                                if ((i & 2) == 0) {
                                    this.status_ = new ArrayList();
                                    i |= 2;
                                }
                                this.status_.add((ComicDetailTypeItemResponse) codedInputStream.mo18430interface(ComicDetailTypeItemResponse.parser(), cimplements));
                            case 170:
                                if ((i & 4) == 0) {
                                    this.authors_ = new ArrayList();
                                    i |= 4;
                                }
                                this.authors_.add((ComicDetailTypeItemResponse) codedInputStream.mo18430interface(ComicDetailTypeItemResponse.parser(), cimplements));
                            case 176:
                                this.subscribeNum_ = codedInputStream.mo18439strictfp();
                            case 186:
                                if ((i & 8) == 0) {
                                    this.chapters_ = new ArrayList();
                                    i |= 8;
                                }
                                this.chapters_.add((ComicDetailChapterResponse) codedInputStream.mo18430interface(ComicDetailChapterResponse.parser(), cimplements));
                            case 192:
                                this.isNeedLogin_ = codedInputStream.mo18439strictfp();
                            case 208:
                                this.isHideChapter_ = codedInputStream.mo18439strictfp();
                            default:
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                    z = true;
                                }
                        }
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 1) != 0) {
                        this.types_ = Collections.unmodifiableList(this.types_);
                    }
                    if ((i & 2) != 0) {
                        this.status_ = Collections.unmodifiableList(this.status_);
                    }
                    if ((i & 4) != 0) {
                        this.authors_ = Collections.unmodifiableList(this.authors_);
                    }
                    if ((i & 8) != 0) {
                        this.chapters_ = Collections.unmodifiableList(this.chapters_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    public interface ComicDetailInfoResponseOrBuilder extends MessageOrBuilder {
        ComicDetailTypeItemResponse getAuthors(int i);

        int getAuthorsCount();

        List<ComicDetailTypeItemResponse> getAuthorsList();

        ComicDetailTypeItemResponseOrBuilder getAuthorsOrBuilder(int i);

        List<? extends ComicDetailTypeItemResponseOrBuilder> getAuthorsOrBuilderList();

        ComicDetailChapterResponse getChapters(int i);

        int getChaptersCount();

        List<ComicDetailChapterResponse> getChaptersList();

        ComicDetailChapterResponseOrBuilder getChaptersOrBuilder(int i);

        List<? extends ComicDetailChapterResponseOrBuilder> getChaptersOrBuilderList();

        String getComicPy();

        ByteString getComicPyBytes();

        int getCopyright();

        String getCover();

        ByteString getCoverBytes();

        String getDescription();

        ByteString getDescriptionBytes();

        int getDirection();

        String getFirstLetter();

        ByteString getFirstLetterBytes();

        int getHidden();

        int getHitNum();

        int getHotNum();

        int getId();

        int getIsDmzj();

        int getIsHideChapter();

        int getIsLock();

        int getIsNeedLogin();

        int getIslong();

        int getLastUpdateChapterId();

        String getLastUpdateChapterName();

        ByteString getLastUpdateChapterNameBytes();

        long getLastUpdatetime();

        ComicDetailTypeItemResponse getStatus(int i);

        int getStatusCount();

        List<ComicDetailTypeItemResponse> getStatusList();

        ComicDetailTypeItemResponseOrBuilder getStatusOrBuilder(int i);

        List<? extends ComicDetailTypeItemResponseOrBuilder> getStatusOrBuilderList();

        int getSubscribeNum();

        String getTitle();

        ByteString getTitleBytes();

        ComicDetailTypeItemResponse getTypes(int i);

        int getTypesCount();

        List<ComicDetailTypeItemResponse> getTypesList();

        ComicDetailTypeItemResponseOrBuilder getTypesOrBuilder(int i);

        List<? extends ComicDetailTypeItemResponseOrBuilder> getTypesOrBuilderList();

        int getUid();
    }

    public static final class ComicDetailResponse extends GeneratedMessageV3 implements ComicDetailResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private ComicDetailInfoResponse data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final ComicDetailResponse DEFAULT_INSTANCE = new ComicDetailResponse();
        private static final Parser<ComicDetailResponse> PARSER = new Cdo<ComicDetailResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponse.1
            @Override // com.google.protobuf.Parser
            public ComicDetailResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicDetailResponse(codedInputStream, cimplements);
            }
        };

        public static ComicDetailResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicDetailResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicDetailResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicDetailResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicDetailResponse)) {
                return super.equals(obj);
            }
            ComicDetailResponse comicDetailResponse = (ComicDetailResponse) obj;
            if (getErrno() == comicDetailResponse.getErrno() && getErrmsg().equals(comicDetailResponse.getErrmsg()) && hasData() == comicDetailResponse.hasData()) {
                return (!hasData() || getData().equals(comicDetailResponse.getData())) && this.unknownFields.equals(comicDetailResponse.unknownFields);
            }
            return false;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public ComicDetailInfoResponse getData() {
            ComicDetailInfoResponse comicDetailInfoResponse = this.data_;
            return comicDetailInfoResponse == null ? ComicDetailInfoResponse.getDefaultInstance() : comicDetailInfoResponse;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public ComicDetailInfoResponseOrBuilder getDataOrBuilder() {
            return getData();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicDetailResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.errno_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            if (!getErrmsgBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.errmsg_);
            }
            if (this.data_ != null) {
                iM20874abstract += Cnative.m20900synchronized(3, getData());
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
        public boolean hasData() {
            return this.data_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getErrno()) * 37) + 2) * 53) + getErrmsg().hashCode();
            if (hasData()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getData().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable.m19575new(ComicDetailResponse.class, Builder.class);
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
            return new ComicDetailResponse();
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
            if (this.data_ != null) {
                cnative.f0(3, getData());
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicDetailResponseOrBuilder {
            private a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> dataBuilder_;
            private ComicDetailInfoResponse data_;
            private Object errmsg_;
            private int errno_;

            private a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new a1<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                    onChanged();
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                return this;
            }

            public Builder clearErrmsg() {
                this.errmsg_ = ComicDetailResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public ComicDetailInfoResponse getData() {
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (ComicDetailInfoResponse) a1Var.m19692try();
                }
                ComicDetailInfoResponse comicDetailInfoResponse = this.data_;
                return comicDetailInfoResponse == null ? ComicDetailInfoResponse.getDefaultInstance() : comicDetailInfoResponse;
            }

            public ComicDetailInfoResponse.Builder getDataBuilder() {
                onChanged();
                return (ComicDetailInfoResponse.Builder) getDataFieldBuilder().m19690new();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public ComicDetailInfoResponseOrBuilder getDataOrBuilder() {
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (ComicDetailInfoResponseOrBuilder) a1Var.m19685case();
                }
                ComicDetailInfoResponse comicDetailInfoResponse = this.data_;
                return comicDetailInfoResponse == null ? ComicDetailInfoResponse.getDefaultInstance() : comicDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailResponseOrBuilder
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable.m19575new(ComicDetailResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeData(ComicDetailInfoResponse comicDetailInfoResponse) {
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    ComicDetailInfoResponse comicDetailInfoResponse2 = this.data_;
                    if (comicDetailInfoResponse2 != null) {
                        this.data_ = ComicDetailInfoResponse.newBuilder(comicDetailInfoResponse2).mergeFrom(comicDetailInfoResponse).buildPartial();
                    } else {
                        this.data_ = comicDetailInfoResponse;
                    }
                    onChanged();
                } else {
                    a1Var.m19687else(comicDetailInfoResponse);
                }
                return this;
            }

            public Builder setData(ComicDetailInfoResponse comicDetailInfoResponse) {
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    Objects.requireNonNull(comicDetailInfoResponse);
                    this.data_ = comicDetailInfoResponse;
                    onChanged();
                } else {
                    a1Var.m19691this(comicDetailInfoResponse);
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
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailResponse build() {
                ComicDetailResponse comicDetailResponseBuildPartial = buildPartial();
                if (comicDetailResponseBuildPartial.isInitialized()) {
                    return comicDetailResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicDetailResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailResponse buildPartial() {
                ComicDetailResponse comicDetailResponse = new ComicDetailResponse(this);
                comicDetailResponse.errno_ = this.errno_;
                comicDetailResponse.errmsg_ = this.errmsg_;
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    comicDetailResponse.data_ = this.data_;
                } else {
                    comicDetailResponse.data_ = (ComicDetailInfoResponse) a1Var.m19686do();
                }
                onBuilt();
                return comicDetailResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicDetailResponse getDefaultInstanceForType() {
                return ComicDetailResponse.getDefaultInstance();
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
                this.errno_ = 0;
                this.errmsg_ = "";
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.errmsg_ = "";
                maybeForceBuilderInitialization();
            }

            public Builder setData(ComicDetailInfoResponse.Builder builder) {
                a1<ComicDetailInfoResponse, ComicDetailInfoResponse.Builder, ComicDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    this.data_ = builder.build();
                    onChanged();
                } else {
                    a1Var.m19691this(builder.build());
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
                if (message instanceof ComicDetailResponse) {
                    return mergeFrom((ComicDetailResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ComicDetailResponse comicDetailResponse) {
                if (comicDetailResponse == ComicDetailResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicDetailResponse.getErrno() != 0) {
                    setErrno(comicDetailResponse.getErrno());
                }
                if (!comicDetailResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = comicDetailResponse.errmsg_;
                    onChanged();
                }
                if (comicDetailResponse.hasData()) {
                    mergeData(comicDetailResponse.getData());
                }
                mergeUnknownFields(comicDetailResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ComicDetailResponse comicDetailResponse = null;
                try {
                    try {
                        ComicDetailResponse comicDetailResponse2 = (ComicDetailResponse) ComicDetailResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicDetailResponse2 != null) {
                            mergeFrom(comicDetailResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicDetailResponse comicDetailResponse3 = (ComicDetailResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicDetailResponse = comicDetailResponse3;
                            if (comicDetailResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicDetailResponse != null) {
                        mergeFrom(comicDetailResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicDetailResponse comicDetailResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicDetailResponse);
        }

        public static ComicDetailResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicDetailResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicDetailResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicDetailResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicDetailResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicDetailResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
        }

        public static ComicDetailResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicDetailResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicDetailResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicDetailResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.errno_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 18) {
                                this.errmsg_ = codedInputStream.k();
                            } else if (iL != 26) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                ComicDetailInfoResponse comicDetailInfoResponse = this.data_;
                                ComicDetailInfoResponse.Builder builder = comicDetailInfoResponse != null ? comicDetailInfoResponse.toBuilder() : null;
                                ComicDetailInfoResponse comicDetailInfoResponse2 = (ComicDetailInfoResponse) codedInputStream.mo18430interface(ComicDetailInfoResponse.parser(), cimplements);
                                this.data_ = comicDetailInfoResponse2;
                                if (builder != null) {
                                    builder.mergeFrom(comicDetailInfoResponse2);
                                    this.data_ = builder.buildPartial();
                                }
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

        public static ComicDetailResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicDetailResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicDetailResponseOrBuilder extends MessageOrBuilder {
        ComicDetailInfoResponse getData();

        ComicDetailInfoResponseOrBuilder getDataOrBuilder();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();

        boolean hasData();
    }

    public static final class ComicDetailTypeItemResponse extends GeneratedMessageV3 implements ComicDetailTypeItemResponseOrBuilder {
        private static final ComicDetailTypeItemResponse DEFAULT_INSTANCE = new ComicDetailTypeItemResponse();
        private static final Parser<ComicDetailTypeItemResponse> PARSER = new Cdo<ComicDetailTypeItemResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponse.1
            @Override // com.google.protobuf.Parser
            public ComicDetailTypeItemResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicDetailTypeItemResponse(codedInputStream, cimplements);
            }
        };
        public static final int TAGID_FIELD_NUMBER = 1;
        public static final int TAGNAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int tagId_;
        private volatile Object tagName_;

        public static ComicDetailTypeItemResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicDetailTypeItemResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicDetailTypeItemResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicDetailTypeItemResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicDetailTypeItemResponse)) {
                return super.equals(obj);
            }
            ComicDetailTypeItemResponse comicDetailTypeItemResponse = (ComicDetailTypeItemResponse) obj;
            return getTagId() == comicDetailTypeItemResponse.getTagId() && getTagName().equals(comicDetailTypeItemResponse.getTagName()) && this.unknownFields.equals(comicDetailTypeItemResponse.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicDetailTypeItemResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.tagId_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            if (!getTagNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.tagName_);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
        public int getTagId() {
            return this.tagId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
        public String getTagName() {
            Object obj = this.tagName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tagName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
        public ByteString getTagNameBytes() {
            Object obj = this.tagName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
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
            int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTagId()) * 37) + 2) * 53) + getTagName().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable.m19575new(ComicDetailTypeItemResponse.class, Builder.class);
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
            return new ComicDetailTypeItemResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.tagId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getTagNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.tagName_);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicDetailTypeItemResponseOrBuilder {
            private int tagId_;
            private Object tagName_;

            public static final Descriptors.Cif getDescriptor() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearTagId() {
                this.tagId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTagName() {
                this.tagName_ = ComicDetailTypeItemResponse.getDefaultInstance().getTagName();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
            public int getTagId() {
                return this.tagId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
            public String getTagName() {
                Object obj = this.tagName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.tagName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse.ComicDetailTypeItemResponseOrBuilder
            public ByteString getTagNameBytes() {
                Object obj = this.tagName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tagName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return DetailResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable.m19575new(ComicDetailTypeItemResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setTagId(int i) {
                this.tagId_ = i;
                onChanged();
                return this;
            }

            public Builder setTagName(String str) {
                Objects.requireNonNull(str);
                this.tagName_ = str;
                onChanged();
                return this;
            }

            public Builder setTagNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.tagName_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.tagName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailTypeItemResponse build() {
                ComicDetailTypeItemResponse comicDetailTypeItemResponseBuildPartial = buildPartial();
                if (comicDetailTypeItemResponseBuildPartial.isInitialized()) {
                    return comicDetailTypeItemResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicDetailTypeItemResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicDetailTypeItemResponse buildPartial() {
                ComicDetailTypeItemResponse comicDetailTypeItemResponse = new ComicDetailTypeItemResponse(this);
                comicDetailTypeItemResponse.tagId_ = this.tagId_;
                comicDetailTypeItemResponse.tagName_ = this.tagName_;
                onBuilt();
                return comicDetailTypeItemResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicDetailTypeItemResponse getDefaultInstanceForType() {
                return ComicDetailTypeItemResponse.getDefaultInstance();
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
                this.tagId_ = 0;
                this.tagName_ = "";
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.tagName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ComicDetailTypeItemResponse) {
                    return mergeFrom((ComicDetailTypeItemResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
                if (comicDetailTypeItemResponse == ComicDetailTypeItemResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicDetailTypeItemResponse.getTagId() != 0) {
                    setTagId(comicDetailTypeItemResponse.getTagId());
                }
                if (!comicDetailTypeItemResponse.getTagName().isEmpty()) {
                    this.tagName_ = comicDetailTypeItemResponse.tagName_;
                    onChanged();
                }
                mergeUnknownFields(comicDetailTypeItemResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ComicDetailTypeItemResponse comicDetailTypeItemResponse = null;
                try {
                    try {
                        ComicDetailTypeItemResponse comicDetailTypeItemResponse2 = (ComicDetailTypeItemResponse) ComicDetailTypeItemResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicDetailTypeItemResponse2 != null) {
                            mergeFrom(comicDetailTypeItemResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicDetailTypeItemResponse comicDetailTypeItemResponse3 = (ComicDetailTypeItemResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicDetailTypeItemResponse = comicDetailTypeItemResponse3;
                            if (comicDetailTypeItemResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicDetailTypeItemResponse != null) {
                        mergeFrom(comicDetailTypeItemResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicDetailTypeItemResponse comicDetailTypeItemResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicDetailTypeItemResponse);
        }

        public static ComicDetailTypeItemResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicDetailTypeItemResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicDetailTypeItemResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailTypeItemResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicDetailTypeItemResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicDetailTypeItemResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicDetailTypeItemResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.tagName_ = "";
        }

        public static ComicDetailTypeItemResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicDetailTypeItemResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicDetailTypeItemResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicDetailTypeItemResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int iL = codedInputStream.l();
                            if (iL != 0) {
                                if (iL == 8) {
                                    this.tagId_ = codedInputStream.mo18439strictfp();
                                } else if (iL != 18) {
                                    if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                    }
                                } else {
                                    this.tagName_ = codedInputStream.k();
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
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ComicDetailTypeItemResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicDetailTypeItemResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicDetailTypeItemResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicDetailTypeItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicDetailTypeItemResponseOrBuilder extends MessageOrBuilder {
        int getTagId();

        String getTagName();

        ByteString getTagNameBytes();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"Id", "Title", "Direction", "Islong", "IsDmzj", "Cover", "Description", "LastUpdatetime", "LastUpdateChapterName", ExifInterface.TAG_COPYRIGHT, "FirstLetter", "ComicPy", "Hidden", "HotNum", "HitNum", "Uid", "IsLock", "LastUpdateChapterId", "Types", "Status", "Authors", "SubscribeNum", "Chapters", "IsNeedLogin", "IsHideChapter"});
        Descriptors.Cif cif3 = getDescriptor().m19244while().get(2);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor = cif3;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif3, new String[]{"TagId", "TagName"});
        Descriptors.Cif cif4 = getDescriptor().m19244while().get(3);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor = cif4;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif4, new String[]{"Title", "Data"});
        Descriptors.Cif cif5 = getDescriptor().m19244while().get(4);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor = cif5;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif5, new String[]{"ChapterId", "ChapterTitle", "Updatetime", "Filesize", "ChapterOrder"});
    }

    private DetailResponse() {
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
