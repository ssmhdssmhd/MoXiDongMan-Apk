package com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic;

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
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.a1;
import com.google.protobuf.n;
import com.google.protobuf.s;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class ChapterDetailResponseOuterClass {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u001dchapter_detail_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u0099\u0001\n\u0015ChapterDetailResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012a\n\u0004Data\u0018\u0003 \u0001(\u000b2S.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailInfoResponse\"Ê\u0001\n\u0019ChapterDetailInfoResponse\u0012\u0012\n\nchapterId_\u0018\u0001 \u0001(\u0003\u0012\u0010\n\bcomicId_\u0018\u0002 \u0001(\u0003\u0012\u000e\n\u0006title_\u0018\u0003 \u0001(\t\u0012\u0015\n\rchapterOrder_\u0018\u0004 \u0001(\u0005\u0012\u0012\n\ndirection_\u0018\u0005 \u0001(\u0005\u0012\u0010\n\bpageUrl_\u0018\u0006 \u0003(\t\u0012\u000f\n\u0007picnum_\u0018\u0007 \u0001(\u0005\u0012\u0012\n\npageUrlHd_\u0018\b \u0003(\t\u0012\u0015\n\rcommentCount_\u0018\t \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_fieldAccessorTable;

    public static final class ChapterDetailInfoResponse extends GeneratedMessageV3 implements ChapterDetailInfoResponseOrBuilder {
        public static final int CHAPTERID__FIELD_NUMBER = 1;
        public static final int CHAPTERORDER__FIELD_NUMBER = 4;
        public static final int COMICID__FIELD_NUMBER = 2;
        public static final int COMMENTCOUNT__FIELD_NUMBER = 9;
        public static final int DIRECTION__FIELD_NUMBER = 5;
        public static final int PAGEURLHD__FIELD_NUMBER = 8;
        public static final int PAGEURL__FIELD_NUMBER = 6;
        public static final int PICNUM__FIELD_NUMBER = 7;
        public static final int TITLE__FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private long chapterId_;
        private int chapterOrder_;
        private long comicId_;
        private int commentCount_;
        private int direction_;
        private byte memoizedIsInitialized;
        private LazyStringList pageUrlHd_;
        private LazyStringList pageUrl_;
        private int picnum_;
        private volatile Object title_;
        private static final ChapterDetailInfoResponse DEFAULT_INSTANCE = new ChapterDetailInfoResponse();
        private static final Parser<ChapterDetailInfoResponse> PARSER = new Cdo<ChapterDetailInfoResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponse.1
            @Override // com.google.protobuf.Parser
            public ChapterDetailInfoResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ChapterDetailInfoResponse(codedInputStream, cimplements);
            }
        };

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ChapterDetailInfoResponseOrBuilder {
            private int bitField0_;
            private long chapterId_;
            private int chapterOrder_;
            private long comicId_;
            private int commentCount_;
            private int direction_;
            private LazyStringList pageUrlHd_;
            private LazyStringList pageUrl_;
            private int picnum_;
            private Object title_;

            private void ensurePageUrlHdIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.pageUrlHd_ = new s(this.pageUrlHd_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensurePageUrlIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.pageUrl_ = new s(this.pageUrl_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Cif getDescriptor() {
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder addAllPageUrl(Iterable<String> iterable) {
                ensurePageUrlIsMutable();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.pageUrl_);
                onChanged();
                return this;
            }

            public Builder addAllPageUrlHd(Iterable<String> iterable) {
                ensurePageUrlHdIsMutable();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.pageUrlHd_);
                onChanged();
                return this;
            }

            public Builder addPageUrl(String str) {
                Objects.requireNonNull(str);
                ensurePageUrlIsMutable();
                this.pageUrl_.add((LazyStringList) str);
                onChanged();
                return this;
            }

            public Builder addPageUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                ensurePageUrlIsMutable();
                this.pageUrl_.add(byteString);
                onChanged();
                return this;
            }

            public Builder addPageUrlHd(String str) {
                Objects.requireNonNull(str);
                ensurePageUrlHdIsMutable();
                this.pageUrlHd_.add((LazyStringList) str);
                onChanged();
                return this;
            }

            public Builder addPageUrlHdBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                ensurePageUrlHdIsMutable();
                this.pageUrlHd_.add(byteString);
                onChanged();
                return this;
            }

            public Builder clearChapterId() {
                this.chapterId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearChapterOrder() {
                this.chapterOrder_ = 0;
                onChanged();
                return this;
            }

            public Builder clearComicId() {
                this.comicId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearCommentCount() {
                this.commentCount_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDirection() {
                this.direction_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPageUrl() {
                this.pageUrl_ = s.f17207try;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearPageUrlHd() {
                this.pageUrlHd_ = s.f17207try;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder clearPicnum() {
                this.picnum_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.title_ = ChapterDetailInfoResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public long getChapterId() {
                return this.chapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getChapterOrder() {
                return this.chapterOrder_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public long getComicId() {
                return this.comicId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getCommentCount() {
                return this.commentCount_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getDirection() {
                return this.direction_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public String getPageUrl(int i) {
                return this.pageUrl_.get(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public ByteString getPageUrlBytes(int i) {
                return this.pageUrl_.getByteString(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getPageUrlCount() {
                return this.pageUrl_.size();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public String getPageUrlHd(int i) {
                return this.pageUrlHd_.get(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public ByteString getPageUrlHdBytes(int i) {
                return this.pageUrlHd_.getByteString(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getPageUrlHdCount() {
                return this.pageUrlHd_.size();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public int getPicnum() {
                return this.picnum_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
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
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_fieldAccessorTable.m19575new(ChapterDetailInfoResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setChapterId(long j) {
                this.chapterId_ = j;
                onChanged();
                return this;
            }

            public Builder setChapterOrder(int i) {
                this.chapterOrder_ = i;
                onChanged();
                return this;
            }

            public Builder setComicId(long j) {
                this.comicId_ = j;
                onChanged();
                return this;
            }

            public Builder setCommentCount(int i) {
                this.commentCount_ = i;
                onChanged();
                return this;
            }

            public Builder setDirection(int i) {
                this.direction_ = i;
                onChanged();
                return this;
            }

            public Builder setPageUrl(int i, String str) {
                Objects.requireNonNull(str);
                ensurePageUrlIsMutable();
                this.pageUrl_.set(i, (int) str);
                onChanged();
                return this;
            }

            public Builder setPageUrlHd(int i, String str) {
                Objects.requireNonNull(str);
                ensurePageUrlHdIsMutable();
                this.pageUrlHd_.set(i, (int) str);
                onChanged();
                return this;
            }

            public Builder setPicnum(int i) {
                this.picnum_ = i;
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

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public ProtocolStringList getPageUrlHdList() {
                return this.pageUrlHd_.getUnmodifiableView();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
            public ProtocolStringList getPageUrlList() {
                return this.pageUrl_.getUnmodifiableView();
            }

            private Builder() {
                this.title_ = "";
                LazyStringList lazyStringList = s.f17207try;
                this.pageUrl_ = lazyStringList;
                this.pageUrlHd_ = lazyStringList;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChapterDetailInfoResponse build() {
                ChapterDetailInfoResponse chapterDetailInfoResponseBuildPartial = buildPartial();
                if (chapterDetailInfoResponseBuildPartial.isInitialized()) {
                    return chapterDetailInfoResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) chapterDetailInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChapterDetailInfoResponse buildPartial() {
                ChapterDetailInfoResponse chapterDetailInfoResponse = new ChapterDetailInfoResponse(this);
                chapterDetailInfoResponse.chapterId_ = this.chapterId_;
                chapterDetailInfoResponse.comicId_ = this.comicId_;
                chapterDetailInfoResponse.title_ = this.title_;
                chapterDetailInfoResponse.chapterOrder_ = this.chapterOrder_;
                chapterDetailInfoResponse.direction_ = this.direction_;
                if ((this.bitField0_ & 1) != 0) {
                    this.pageUrl_ = this.pageUrl_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                chapterDetailInfoResponse.pageUrl_ = this.pageUrl_;
                chapterDetailInfoResponse.picnum_ = this.picnum_;
                if ((this.bitField0_ & 2) != 0) {
                    this.pageUrlHd_ = this.pageUrlHd_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                chapterDetailInfoResponse.pageUrlHd_ = this.pageUrlHd_;
                chapterDetailInfoResponse.commentCount_ = this.commentCount_;
                onBuilt();
                return chapterDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChapterDetailInfoResponse getDefaultInstanceForType() {
                return ChapterDetailInfoResponse.getDefaultInstance();
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
                this.chapterId_ = 0L;
                this.comicId_ = 0L;
                this.title_ = "";
                this.chapterOrder_ = 0;
                this.direction_ = 0;
                LazyStringList lazyStringList = s.f17207try;
                this.pageUrl_ = lazyStringList;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.picnum_ = 0;
                this.pageUrlHd_ = lazyStringList;
                this.bitField0_ = i & (-3);
                this.commentCount_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ChapterDetailInfoResponse) {
                    return mergeFrom((ChapterDetailInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.title_ = "";
                LazyStringList lazyStringList = s.f17207try;
                this.pageUrl_ = lazyStringList;
                this.pageUrlHd_ = lazyStringList;
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(ChapterDetailInfoResponse chapterDetailInfoResponse) {
                if (chapterDetailInfoResponse == ChapterDetailInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (chapterDetailInfoResponse.getChapterId() != 0) {
                    setChapterId(chapterDetailInfoResponse.getChapterId());
                }
                if (chapterDetailInfoResponse.getComicId() != 0) {
                    setComicId(chapterDetailInfoResponse.getComicId());
                }
                if (!chapterDetailInfoResponse.getTitle().isEmpty()) {
                    this.title_ = chapterDetailInfoResponse.title_;
                    onChanged();
                }
                if (chapterDetailInfoResponse.getChapterOrder() != 0) {
                    setChapterOrder(chapterDetailInfoResponse.getChapterOrder());
                }
                if (chapterDetailInfoResponse.getDirection() != 0) {
                    setDirection(chapterDetailInfoResponse.getDirection());
                }
                if (!chapterDetailInfoResponse.pageUrl_.isEmpty()) {
                    if (this.pageUrl_.isEmpty()) {
                        this.pageUrl_ = chapterDetailInfoResponse.pageUrl_;
                        this.bitField0_ &= -2;
                    } else {
                        ensurePageUrlIsMutable();
                        this.pageUrl_.addAll(chapterDetailInfoResponse.pageUrl_);
                    }
                    onChanged();
                }
                if (chapterDetailInfoResponse.getPicnum() != 0) {
                    setPicnum(chapterDetailInfoResponse.getPicnum());
                }
                if (!chapterDetailInfoResponse.pageUrlHd_.isEmpty()) {
                    if (this.pageUrlHd_.isEmpty()) {
                        this.pageUrlHd_ = chapterDetailInfoResponse.pageUrlHd_;
                        this.bitField0_ &= -3;
                    } else {
                        ensurePageUrlHdIsMutable();
                        this.pageUrlHd_.addAll(chapterDetailInfoResponse.pageUrlHd_);
                    }
                    onChanged();
                }
                if (chapterDetailInfoResponse.getCommentCount() != 0) {
                    setCommentCount(chapterDetailInfoResponse.getCommentCount());
                }
                mergeUnknownFields(chapterDetailInfoResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ChapterDetailInfoResponse chapterDetailInfoResponse = null;
                try {
                    try {
                        ChapterDetailInfoResponse chapterDetailInfoResponse2 = (ChapterDetailInfoResponse) ChapterDetailInfoResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (chapterDetailInfoResponse2 != null) {
                            mergeFrom(chapterDetailInfoResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ChapterDetailInfoResponse chapterDetailInfoResponse3 = (ChapterDetailInfoResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            chapterDetailInfoResponse = chapterDetailInfoResponse3;
                            if (chapterDetailInfoResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (chapterDetailInfoResponse != null) {
                        mergeFrom(chapterDetailInfoResponse);
                    }
                    throw th;
                }
            }
        }

        public static ChapterDetailInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ChapterDetailInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ChapterDetailInfoResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ChapterDetailInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ChapterDetailInfoResponse)) {
                return super.equals(obj);
            }
            ChapterDetailInfoResponse chapterDetailInfoResponse = (ChapterDetailInfoResponse) obj;
            return getChapterId() == chapterDetailInfoResponse.getChapterId() && getComicId() == chapterDetailInfoResponse.getComicId() && getTitle().equals(chapterDetailInfoResponse.getTitle()) && getChapterOrder() == chapterDetailInfoResponse.getChapterOrder() && getDirection() == chapterDetailInfoResponse.getDirection() && getPageUrlList().equals(chapterDetailInfoResponse.getPageUrlList()) && getPicnum() == chapterDetailInfoResponse.getPicnum() && getPageUrlHdList().equals(chapterDetailInfoResponse.getPageUrlHdList()) && getCommentCount() == chapterDetailInfoResponse.getCommentCount() && this.unknownFields.equals(chapterDetailInfoResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public long getChapterId() {
            return this.chapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getChapterOrder() {
            return this.chapterOrder_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public long getComicId() {
            return this.comicId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getCommentCount() {
            return this.commentCount_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getDirection() {
            return this.direction_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public String getPageUrl(int i) {
            return this.pageUrl_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public ByteString getPageUrlBytes(int i) {
            return this.pageUrl_.getByteString(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getPageUrlCount() {
            return this.pageUrl_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public String getPageUrlHd(int i) {
            return this.pageUrlHd_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public ByteString getPageUrlHdBytes(int i) {
            return this.pageUrlHd_.getByteString(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getPageUrlHdCount() {
            return this.pageUrlHd_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChapterDetailInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public int getPicnum() {
            return this.picnum_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            long j = this.chapterId_;
            int iM20897strictfp = j != 0 ? Cnative.m20897strictfp(1, j) + 0 : 0;
            long j2 = this.comicId_;
            if (j2 != 0) {
                iM20897strictfp += Cnative.m20897strictfp(2, j2);
            }
            if (!getTitleBytes().isEmpty()) {
                iM20897strictfp += GeneratedMessageV3.computeStringSize(3, this.title_);
            }
            int i2 = this.chapterOrder_;
            if (i2 != 0) {
                iM20897strictfp += Cnative.m20874abstract(4, i2);
            }
            int i3 = this.direction_;
            if (i3 != 0) {
                iM20897strictfp += Cnative.m20874abstract(5, i3);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i4 = 0; i4 < this.pageUrl_.size(); i4++) {
                iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.pageUrl_.getRaw(i4));
            }
            int size = iM20897strictfp + iComputeStringSizeNoTag + (getPageUrlList().size() * 1);
            int i5 = this.picnum_;
            if (i5 != 0) {
                size += Cnative.m20874abstract(7, i5);
            }
            int iComputeStringSizeNoTag2 = 0;
            for (int i6 = 0; i6 < this.pageUrlHd_.size(); i6++) {
                iComputeStringSizeNoTag2 += GeneratedMessageV3.computeStringSizeNoTag(this.pageUrlHd_.getRaw(i6));
            }
            int size2 = size + iComputeStringSizeNoTag2 + (getPageUrlHdList().size() * 1);
            int i7 = this.commentCount_;
            if (i7 != 0) {
                size2 += Cnative.m20874abstract(9, i7);
            }
            int serializedSize = size2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
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
            int iHashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.m19622native(getChapterId())) * 37) + 2) * 53) + Internal.m19622native(getComicId())) * 37) + 3) * 53) + getTitle().hashCode()) * 37) + 4) * 53) + getChapterOrder()) * 37) + 5) * 53) + getDirection();
            if (getPageUrlCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getPageUrlList().hashCode();
            }
            int picnum = (((iHashCode * 37) + 7) * 53) + getPicnum();
            if (getPageUrlHdCount() > 0) {
                picnum = (((picnum * 37) + 8) * 53) + getPageUrlHdList().hashCode();
            }
            int commentCount = (((((picnum * 37) + 9) * 53) + getCommentCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = commentCount;
            return commentCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_fieldAccessorTable.m19575new(ChapterDetailInfoResponse.class, Builder.class);
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
            return new ChapterDetailInfoResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            long j = this.chapterId_;
            if (j != 0) {
                cnative.writeInt64(1, j);
            }
            long j2 = this.comicId_;
            if (j2 != 0) {
                cnative.writeInt64(2, j2);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 3, this.title_);
            }
            int i = this.chapterOrder_;
            if (i != 0) {
                cnative.writeInt32(4, i);
            }
            int i2 = this.direction_;
            if (i2 != 0) {
                cnative.writeInt32(5, i2);
            }
            for (int i3 = 0; i3 < this.pageUrl_.size(); i3++) {
                GeneratedMessageV3.writeString(cnative, 6, this.pageUrl_.getRaw(i3));
            }
            int i4 = this.picnum_;
            if (i4 != 0) {
                cnative.writeInt32(7, i4);
            }
            for (int i5 = 0; i5 < this.pageUrlHd_.size(); i5++) {
                GeneratedMessageV3.writeString(cnative, 8, this.pageUrlHd_.getRaw(i5));
            }
            int i6 = this.commentCount_;
            if (i6 != 0) {
                cnative.writeInt32(9, i6);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static Builder newBuilder(ChapterDetailInfoResponse chapterDetailInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(chapterDetailInfoResponse);
        }

        public static ChapterDetailInfoResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public ProtocolStringList getPageUrlHdList() {
            return this.pageUrlHd_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailInfoResponseOrBuilder
        public ProtocolStringList getPageUrlList() {
            return this.pageUrl_;
        }

        private ChapterDetailInfoResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChapterDetailInfoResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ChapterDetailInfoResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChapterDetailInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ChapterDetailInfoResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ChapterDetailInfoResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            LazyStringList lazyStringList = s.f17207try;
            this.pageUrl_ = lazyStringList;
            this.pageUrlHd_ = lazyStringList;
        }

        public static ChapterDetailInfoResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ChapterDetailInfoResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ChapterDetailInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ChapterDetailInfoResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        private ChapterDetailInfoResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 8) {
                                this.chapterId_ = codedInputStream.mo18446volatile();
                            } else if (iL == 16) {
                                this.comicId_ = codedInputStream.mo18446volatile();
                            } else if (iL == 26) {
                                this.title_ = codedInputStream.k();
                            } else if (iL == 32) {
                                this.chapterOrder_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 40) {
                                this.direction_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 50) {
                                String strK = codedInputStream.k();
                                if ((i & 1) == 0) {
                                    this.pageUrl_ = new s();
                                    i |= 1;
                                }
                                this.pageUrl_.add((LazyStringList) strK);
                            } else if (iL == 56) {
                                this.picnum_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 66) {
                                String strK2 = codedInputStream.k();
                                if ((i & 2) == 0) {
                                    this.pageUrlHd_ = new s();
                                    i |= 2;
                                }
                                this.pageUrlHd_.add((LazyStringList) strK2);
                            } else if (iL != 72) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.commentCount_ = codedInputStream.mo18439strictfp();
                            }
                        }
                        z = true;
                    } catch (n e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new n(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if ((i & 1) != 0) {
                        this.pageUrl_ = this.pageUrl_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.pageUrlHd_ = this.pageUrlHd_.getUnmodifiableView();
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ChapterDetailInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ChapterDetailInfoResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ChapterDetailInfoResponseOrBuilder extends MessageOrBuilder {
        long getChapterId();

        int getChapterOrder();

        long getComicId();

        int getCommentCount();

        int getDirection();

        String getPageUrl(int i);

        ByteString getPageUrlBytes(int i);

        int getPageUrlCount();

        String getPageUrlHd(int i);

        ByteString getPageUrlHdBytes(int i);

        int getPageUrlHdCount();

        List<String> getPageUrlHdList();

        List<String> getPageUrlList();

        int getPicnum();

        String getTitle();

        ByteString getTitleBytes();
    }

    public static final class ChapterDetailResponse extends GeneratedMessageV3 implements ChapterDetailResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private ChapterDetailInfoResponse data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final ChapterDetailResponse DEFAULT_INSTANCE = new ChapterDetailResponse();
        private static final Parser<ChapterDetailResponse> PARSER = new Cdo<ChapterDetailResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponse.1
            @Override // com.google.protobuf.Parser
            public ChapterDetailResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ChapterDetailResponse(codedInputStream, cimplements);
            }
        };

        public static ChapterDetailResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ChapterDetailResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ChapterDetailResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ChapterDetailResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ChapterDetailResponse)) {
                return super.equals(obj);
            }
            ChapterDetailResponse chapterDetailResponse = (ChapterDetailResponse) obj;
            if (getErrno() == chapterDetailResponse.getErrno() && getErrmsg().equals(chapterDetailResponse.getErrmsg()) && hasData() == chapterDetailResponse.hasData()) {
                return (!hasData() || getData().equals(chapterDetailResponse.getData())) && this.unknownFields.equals(chapterDetailResponse.unknownFields);
            }
            return false;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
        public ChapterDetailInfoResponse getData() {
            ChapterDetailInfoResponse chapterDetailInfoResponse = this.data_;
            return chapterDetailInfoResponse == null ? ChapterDetailInfoResponse.getDefaultInstance() : chapterDetailInfoResponse;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
        public ChapterDetailInfoResponseOrBuilder getDataOrBuilder() {
            return getData();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChapterDetailResponse> getParserForType() {
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

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
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
            return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_fieldAccessorTable.m19575new(ChapterDetailResponse.class, Builder.class);
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
            return new ChapterDetailResponse();
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

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ChapterDetailResponseOrBuilder {
            private a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> dataBuilder_;
            private ChapterDetailInfoResponse data_;
            private Object errmsg_;
            private int errno_;

            private a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new a1<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_descriptor;
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
                this.errmsg_ = ChapterDetailResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public ChapterDetailInfoResponse getData() {
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (ChapterDetailInfoResponse) a1Var.m19692try();
                }
                ChapterDetailInfoResponse chapterDetailInfoResponse = this.data_;
                return chapterDetailInfoResponse == null ? ChapterDetailInfoResponse.getDefaultInstance() : chapterDetailInfoResponse;
            }

            public ChapterDetailInfoResponse.Builder getDataBuilder() {
                onChanged();
                return (ChapterDetailInfoResponse.Builder) getDataFieldBuilder().m19690new();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public ChapterDetailInfoResponseOrBuilder getDataOrBuilder() {
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (ChapterDetailInfoResponseOrBuilder) a1Var.m19685case();
                }
                ChapterDetailInfoResponse chapterDetailInfoResponse = this.data_;
                return chapterDetailInfoResponse == null ? ChapterDetailInfoResponse.getDefaultInstance() : chapterDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass.ChapterDetailResponseOrBuilder
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChapterDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_fieldAccessorTable.m19575new(ChapterDetailResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeData(ChapterDetailInfoResponse chapterDetailInfoResponse) {
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    ChapterDetailInfoResponse chapterDetailInfoResponse2 = this.data_;
                    if (chapterDetailInfoResponse2 != null) {
                        this.data_ = ChapterDetailInfoResponse.newBuilder(chapterDetailInfoResponse2).mergeFrom(chapterDetailInfoResponse).buildPartial();
                    } else {
                        this.data_ = chapterDetailInfoResponse;
                    }
                    onChanged();
                } else {
                    a1Var.m19687else(chapterDetailInfoResponse);
                }
                return this;
            }

            public Builder setData(ChapterDetailInfoResponse chapterDetailInfoResponse) {
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    Objects.requireNonNull(chapterDetailInfoResponse);
                    this.data_ = chapterDetailInfoResponse;
                    onChanged();
                } else {
                    a1Var.m19691this(chapterDetailInfoResponse);
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
            public ChapterDetailResponse build() {
                ChapterDetailResponse chapterDetailResponseBuildPartial = buildPartial();
                if (chapterDetailResponseBuildPartial.isInitialized()) {
                    return chapterDetailResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) chapterDetailResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChapterDetailResponse buildPartial() {
                ChapterDetailResponse chapterDetailResponse = new ChapterDetailResponse(this);
                chapterDetailResponse.errno_ = this.errno_;
                chapterDetailResponse.errmsg_ = this.errmsg_;
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    chapterDetailResponse.data_ = this.data_;
                } else {
                    chapterDetailResponse.data_ = (ChapterDetailInfoResponse) a1Var.m19686do();
                }
                onBuilt();
                return chapterDetailResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChapterDetailResponse getDefaultInstanceForType() {
                return ChapterDetailResponse.getDefaultInstance();
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

            public Builder setData(ChapterDetailInfoResponse.Builder builder) {
                a1<ChapterDetailInfoResponse, ChapterDetailInfoResponse.Builder, ChapterDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
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
                if (message instanceof ChapterDetailResponse) {
                    return mergeFrom((ChapterDetailResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ChapterDetailResponse chapterDetailResponse) {
                if (chapterDetailResponse == ChapterDetailResponse.getDefaultInstance()) {
                    return this;
                }
                if (chapterDetailResponse.getErrno() != 0) {
                    setErrno(chapterDetailResponse.getErrno());
                }
                if (!chapterDetailResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = chapterDetailResponse.errmsg_;
                    onChanged();
                }
                if (chapterDetailResponse.hasData()) {
                    mergeData(chapterDetailResponse.getData());
                }
                mergeUnknownFields(chapterDetailResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ChapterDetailResponse chapterDetailResponse = null;
                try {
                    try {
                        ChapterDetailResponse chapterDetailResponse2 = (ChapterDetailResponse) ChapterDetailResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (chapterDetailResponse2 != null) {
                            mergeFrom(chapterDetailResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ChapterDetailResponse chapterDetailResponse3 = (ChapterDetailResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            chapterDetailResponse = chapterDetailResponse3;
                            if (chapterDetailResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (chapterDetailResponse != null) {
                        mergeFrom(chapterDetailResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ChapterDetailResponse chapterDetailResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(chapterDetailResponse);
        }

        public static ChapterDetailResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ChapterDetailResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChapterDetailResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ChapterDetailResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChapterDetailResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ChapterDetailResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ChapterDetailResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
        }

        public static ChapterDetailResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ChapterDetailResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ChapterDetailResponse parseFrom(InputStream inputStream) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ChapterDetailResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                ChapterDetailInfoResponse chapterDetailInfoResponse = this.data_;
                                ChapterDetailInfoResponse.Builder builder = chapterDetailInfoResponse != null ? chapterDetailInfoResponse.toBuilder() : null;
                                ChapterDetailInfoResponse chapterDetailInfoResponse2 = (ChapterDetailInfoResponse) codedInputStream.mo18430interface(ChapterDetailInfoResponse.parser(), cimplements);
                                this.data_ = chapterDetailInfoResponse2;
                                if (builder != null) {
                                    builder.mergeFrom(chapterDetailInfoResponse2);
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

        public static ChapterDetailResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ChapterDetailResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ChapterDetailResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ChapterDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ChapterDetailResponseOrBuilder extends MessageOrBuilder {
        ChapterDetailInfoResponse getData();

        ChapterDetailInfoResponseOrBuilder getDataOrBuilder();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();

        boolean hasData();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ChapterDetailInfoResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"ChapterId", "ComicId", "Title", "ChapterOrder", "Direction", "PageUrl", "Picnum", "PageUrlHd", "CommentCount"});
    }

    private ChapterDetailResponseOuterClass() {
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
