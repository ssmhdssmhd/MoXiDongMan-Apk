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
public final class RankListResponse {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u0018rank_list_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u0099\u0001\n\u0015ComicRankListResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012a\n\u0004Data\u0018\u0003 \u0003(\u000b2S.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicRankListItemResponse\"\u0086\u0002\n\u0019ComicRankListItemResponse\u0012\u000f\n\u0007ComicId\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007Authors\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006Status\u0018\u0004 \u0001(\t\u0012\r\n\u0005Cover\u0018\u0005 \u0001(\t\u0012\r\n\u0005Types\u0018\u0006 \u0001(\t\u0012\u0016\n\u000eLastUpdatetime\u0018\u0007 \u0001(\u0003\u0012\u001d\n\u0015LastUpdateChapterName\u0018\b \u0001(\t\u0012\u000f\n\u0007ComicPy\u0018\t \u0001(\t\u0012\u000b\n\u0003Num\u0018\n \u0001(\u0005\u0012\r\n\u0005TagId\u0018\u000b \u0001(\u0005\u0012\u0013\n\u000bChapterName\u0018\f \u0001(\t\u0012\u0011\n\tChapterId\u0018\r \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable;

    public static final class ComicRankListItemResponse extends GeneratedMessageV3 implements ComicRankListItemResponseOrBuilder {
        public static final int AUTHORS_FIELD_NUMBER = 3;
        public static final int CHAPTERID_FIELD_NUMBER = 13;
        public static final int CHAPTERNAME_FIELD_NUMBER = 12;
        public static final int COMICID_FIELD_NUMBER = 1;
        public static final int COMICPY_FIELD_NUMBER = 9;
        public static final int COVER_FIELD_NUMBER = 5;
        public static final int LASTUPDATECHAPTERNAME_FIELD_NUMBER = 8;
        public static final int LASTUPDATETIME_FIELD_NUMBER = 7;
        public static final int NUM_FIELD_NUMBER = 10;
        public static final int STATUS_FIELD_NUMBER = 4;
        public static final int TAGID_FIELD_NUMBER = 11;
        public static final int TITLE_FIELD_NUMBER = 2;
        public static final int TYPES_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private volatile Object authors_;
        private int chapterId_;
        private volatile Object chapterName_;
        private int comicId_;
        private volatile Object comicPy_;
        private volatile Object cover_;
        private volatile Object lastUpdateChapterName_;
        private long lastUpdatetime_;
        private byte memoizedIsInitialized;
        private int num_;
        private volatile Object status_;
        private int tagId_;
        private volatile Object title_;
        private volatile Object types_;
        private static final ComicRankListItemResponse DEFAULT_INSTANCE = new ComicRankListItemResponse();
        private static final Parser<ComicRankListItemResponse> PARSER = new Cdo<ComicRankListItemResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponse.1
            @Override // com.google.protobuf.Parser
            public ComicRankListItemResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicRankListItemResponse(codedInputStream, cimplements);
            }
        };

        public static ComicRankListItemResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicRankListItemResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicRankListItemResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicRankListItemResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicRankListItemResponse)) {
                return super.equals(obj);
            }
            ComicRankListItemResponse comicRankListItemResponse = (ComicRankListItemResponse) obj;
            return getComicId() == comicRankListItemResponse.getComicId() && getTitle().equals(comicRankListItemResponse.getTitle()) && getAuthors().equals(comicRankListItemResponse.getAuthors()) && getStatus().equals(comicRankListItemResponse.getStatus()) && getCover().equals(comicRankListItemResponse.getCover()) && getTypes().equals(comicRankListItemResponse.getTypes()) && getLastUpdatetime() == comicRankListItemResponse.getLastUpdatetime() && getLastUpdateChapterName().equals(comicRankListItemResponse.getLastUpdateChapterName()) && getComicPy().equals(comicRankListItemResponse.getComicPy()) && getNum() == comicRankListItemResponse.getNum() && getTagId() == comicRankListItemResponse.getTagId() && getChapterName().equals(comicRankListItemResponse.getChapterName()) && getChapterId() == comicRankListItemResponse.getChapterId() && this.unknownFields.equals(comicRankListItemResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getAuthors() {
            Object obj = this.authors_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.authors_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getAuthorsBytes() {
            Object obj = this.authors_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authors_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public int getChapterId() {
            return this.chapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getChapterName() {
            Object obj = this.chapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.chapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getChapterNameBytes() {
            Object obj = this.chapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.chapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public int getComicId() {
            return this.comicId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getComicPy() {
            Object obj = this.comicPy_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.comicPy_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getComicPyBytes() {
            Object obj = this.comicPy_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.comicPy_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getCover() {
            Object obj = this.cover_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cover_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getCoverBytes() {
            Object obj = this.cover_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cover_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getLastUpdateChapterName() {
            Object obj = this.lastUpdateChapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastUpdateChapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getLastUpdateChapterNameBytes() {
            Object obj = this.lastUpdateChapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public long getLastUpdatetime() {
            return this.lastUpdatetime_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public int getNum() {
            return this.num_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicRankListItemResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.comicId_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            if (!getTitleBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            if (!getAuthorsBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(3, this.authors_);
            }
            if (!getStatusBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(4, this.status_);
            }
            if (!getCoverBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(5, this.cover_);
            }
            if (!getTypesBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(6, this.types_);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(7, j);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(8, this.lastUpdateChapterName_);
            }
            if (!getComicPyBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(9, this.comicPy_);
            }
            int i3 = this.num_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(10, i3);
            }
            int i4 = this.tagId_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(11, i4);
            }
            if (!getChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(12, this.chapterName_);
            }
            int i5 = this.chapterId_;
            if (i5 != 0) {
                iM20874abstract += Cnative.m20874abstract(13, i5);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getStatus() {
            Object obj = this.status_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.status_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getStatusBytes() {
            Object obj = this.status_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.status_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public int getTagId() {
            return this.tagId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public String getTypes() {
            Object obj = this.types_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.types_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
        public ByteString getTypesBytes() {
            Object obj = this.types_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.types_ = byteStringCopyFromUtf8;
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getComicId()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getAuthors().hashCode()) * 37) + 4) * 53) + getStatus().hashCode()) * 37) + 5) * 53) + getCover().hashCode()) * 37) + 6) * 53) + getTypes().hashCode()) * 37) + 7) * 53) + Internal.m19622native(getLastUpdatetime())) * 37) + 8) * 53) + getLastUpdateChapterName().hashCode()) * 37) + 9) * 53) + getComicPy().hashCode()) * 37) + 10) * 53) + getNum()) * 37) + 11) * 53) + getTagId()) * 37) + 12) * 53) + getChapterName().hashCode()) * 37) + 13) * 53) + getChapterId()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable.m19575new(ComicRankListItemResponse.class, Builder.class);
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
            return new ComicRankListItemResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.comicId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.title_);
            }
            if (!getAuthorsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 3, this.authors_);
            }
            if (!getStatusBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 4, this.status_);
            }
            if (!getCoverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 5, this.cover_);
            }
            if (!getTypesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 6, this.types_);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                cnative.writeInt64(7, j);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 8, this.lastUpdateChapterName_);
            }
            if (!getComicPyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 9, this.comicPy_);
            }
            int i2 = this.num_;
            if (i2 != 0) {
                cnative.writeInt32(10, i2);
            }
            int i3 = this.tagId_;
            if (i3 != 0) {
                cnative.writeInt32(11, i3);
            }
            if (!getChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 12, this.chapterName_);
            }
            int i4 = this.chapterId_;
            if (i4 != 0) {
                cnative.writeInt32(13, i4);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicRankListItemResponseOrBuilder {
            private Object authors_;
            private int chapterId_;
            private Object chapterName_;
            private int comicId_;
            private Object comicPy_;
            private Object cover_;
            private Object lastUpdateChapterName_;
            private long lastUpdatetime_;
            private int num_;
            private Object status_;
            private int tagId_;
            private Object title_;
            private Object types_;

            public static final Descriptors.Cif getDescriptor() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAuthors() {
                this.authors_ = ComicRankListItemResponse.getDefaultInstance().getAuthors();
                onChanged();
                return this;
            }

            public Builder clearChapterId() {
                this.chapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChapterName() {
                this.chapterName_ = ComicRankListItemResponse.getDefaultInstance().getChapterName();
                onChanged();
                return this;
            }

            public Builder clearComicId() {
                this.comicId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearComicPy() {
                this.comicPy_ = ComicRankListItemResponse.getDefaultInstance().getComicPy();
                onChanged();
                return this;
            }

            public Builder clearCover() {
                this.cover_ = ComicRankListItemResponse.getDefaultInstance().getCover();
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterName() {
                this.lastUpdateChapterName_ = ComicRankListItemResponse.getDefaultInstance().getLastUpdateChapterName();
                onChanged();
                return this;
            }

            public Builder clearLastUpdatetime() {
                this.lastUpdatetime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearNum() {
                this.num_ = 0;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.status_ = ComicRankListItemResponse.getDefaultInstance().getStatus();
                onChanged();
                return this;
            }

            public Builder clearTagId() {
                this.tagId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.title_ = ComicRankListItemResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearTypes() {
                this.types_ = ComicRankListItemResponse.getDefaultInstance().getTypes();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getAuthors() {
                Object obj = this.authors_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.authors_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getAuthorsBytes() {
                Object obj = this.authors_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authors_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public int getChapterId() {
                return this.chapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getChapterName() {
                Object obj = this.chapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.chapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getChapterNameBytes() {
                Object obj = this.chapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.chapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public int getComicId() {
                return this.comicId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getComicPy() {
                Object obj = this.comicPy_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.comicPy_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getComicPyBytes() {
                Object obj = this.comicPy_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.comicPy_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getCover() {
                Object obj = this.cover_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cover_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getCoverBytes() {
                Object obj = this.cover_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cover_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getLastUpdateChapterName() {
                Object obj = this.lastUpdateChapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastUpdateChapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getLastUpdateChapterNameBytes() {
                Object obj = this.lastUpdateChapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public long getLastUpdatetime() {
                return this.lastUpdatetime_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public int getNum() {
                return this.num_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getStatus() {
                Object obj = this.status_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.status_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getStatusBytes() {
                Object obj = this.status_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.status_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public int getTagId() {
                return this.tagId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public String getTypes() {
                Object obj = this.types_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.types_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListItemResponseOrBuilder
            public ByteString getTypesBytes() {
                Object obj = this.types_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.types_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable.m19575new(ComicRankListItemResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAuthors(String str) {
                Objects.requireNonNull(str);
                this.authors_ = str;
                onChanged();
                return this;
            }

            public Builder setAuthorsBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.authors_ = byteString;
                onChanged();
                return this;
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

            public Builder setComicId(int i) {
                this.comicId_ = i;
                onChanged();
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

            public Builder setNum(int i) {
                this.num_ = i;
                onChanged();
                return this;
            }

            public Builder setStatus(String str) {
                Objects.requireNonNull(str);
                this.status_ = str;
                onChanged();
                return this;
            }

            public Builder setStatusBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.status_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTagId(int i) {
                this.tagId_ = i;
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

            public Builder setTypes(String str) {
                Objects.requireNonNull(str);
                this.types_ = str;
                onChanged();
                return this;
            }

            public Builder setTypesBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.types_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.title_ = "";
                this.authors_ = "";
                this.status_ = "";
                this.cover_ = "";
                this.types_ = "";
                this.lastUpdateChapterName_ = "";
                this.comicPy_ = "";
                this.chapterName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicRankListItemResponse build() {
                ComicRankListItemResponse comicRankListItemResponseBuildPartial = buildPartial();
                if (comicRankListItemResponseBuildPartial.isInitialized()) {
                    return comicRankListItemResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicRankListItemResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicRankListItemResponse buildPartial() {
                ComicRankListItemResponse comicRankListItemResponse = new ComicRankListItemResponse(this);
                comicRankListItemResponse.comicId_ = this.comicId_;
                comicRankListItemResponse.title_ = this.title_;
                comicRankListItemResponse.authors_ = this.authors_;
                comicRankListItemResponse.status_ = this.status_;
                comicRankListItemResponse.cover_ = this.cover_;
                comicRankListItemResponse.types_ = this.types_;
                comicRankListItemResponse.lastUpdatetime_ = this.lastUpdatetime_;
                comicRankListItemResponse.lastUpdateChapterName_ = this.lastUpdateChapterName_;
                comicRankListItemResponse.comicPy_ = this.comicPy_;
                comicRankListItemResponse.num_ = this.num_;
                comicRankListItemResponse.tagId_ = this.tagId_;
                comicRankListItemResponse.chapterName_ = this.chapterName_;
                comicRankListItemResponse.chapterId_ = this.chapterId_;
                onBuilt();
                return comicRankListItemResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicRankListItemResponse getDefaultInstanceForType() {
                return ComicRankListItemResponse.getDefaultInstance();
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
                this.comicId_ = 0;
                this.title_ = "";
                this.authors_ = "";
                this.status_ = "";
                this.cover_ = "";
                this.types_ = "";
                this.lastUpdatetime_ = 0L;
                this.lastUpdateChapterName_ = "";
                this.comicPy_ = "";
                this.num_ = 0;
                this.tagId_ = 0;
                this.chapterName_ = "";
                this.chapterId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ComicRankListItemResponse) {
                    return mergeFrom((ComicRankListItemResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ComicRankListItemResponse comicRankListItemResponse) {
                if (comicRankListItemResponse == ComicRankListItemResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicRankListItemResponse.getComicId() != 0) {
                    setComicId(comicRankListItemResponse.getComicId());
                }
                if (!comicRankListItemResponse.getTitle().isEmpty()) {
                    this.title_ = comicRankListItemResponse.title_;
                    onChanged();
                }
                if (!comicRankListItemResponse.getAuthors().isEmpty()) {
                    this.authors_ = comicRankListItemResponse.authors_;
                    onChanged();
                }
                if (!comicRankListItemResponse.getStatus().isEmpty()) {
                    this.status_ = comicRankListItemResponse.status_;
                    onChanged();
                }
                if (!comicRankListItemResponse.getCover().isEmpty()) {
                    this.cover_ = comicRankListItemResponse.cover_;
                    onChanged();
                }
                if (!comicRankListItemResponse.getTypes().isEmpty()) {
                    this.types_ = comicRankListItemResponse.types_;
                    onChanged();
                }
                if (comicRankListItemResponse.getLastUpdatetime() != 0) {
                    setLastUpdatetime(comicRankListItemResponse.getLastUpdatetime());
                }
                if (!comicRankListItemResponse.getLastUpdateChapterName().isEmpty()) {
                    this.lastUpdateChapterName_ = comicRankListItemResponse.lastUpdateChapterName_;
                    onChanged();
                }
                if (!comicRankListItemResponse.getComicPy().isEmpty()) {
                    this.comicPy_ = comicRankListItemResponse.comicPy_;
                    onChanged();
                }
                if (comicRankListItemResponse.getNum() != 0) {
                    setNum(comicRankListItemResponse.getNum());
                }
                if (comicRankListItemResponse.getTagId() != 0) {
                    setTagId(comicRankListItemResponse.getTagId());
                }
                if (!comicRankListItemResponse.getChapterName().isEmpty()) {
                    this.chapterName_ = comicRankListItemResponse.chapterName_;
                    onChanged();
                }
                if (comicRankListItemResponse.getChapterId() != 0) {
                    setChapterId(comicRankListItemResponse.getChapterId());
                }
                mergeUnknownFields(comicRankListItemResponse.unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.title_ = "";
                this.authors_ = "";
                this.status_ = "";
                this.cover_ = "";
                this.types_ = "";
                this.lastUpdateChapterName_ = "";
                this.comicPy_ = "";
                this.chapterName_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ComicRankListItemResponse comicRankListItemResponse = null;
                try {
                    try {
                        ComicRankListItemResponse comicRankListItemResponse2 = (ComicRankListItemResponse) ComicRankListItemResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicRankListItemResponse2 != null) {
                            mergeFrom(comicRankListItemResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicRankListItemResponse comicRankListItemResponse3 = (ComicRankListItemResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicRankListItemResponse = comicRankListItemResponse3;
                            if (comicRankListItemResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicRankListItemResponse != null) {
                        mergeFrom(comicRankListItemResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicRankListItemResponse comicRankListItemResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicRankListItemResponse);
        }

        public static ComicRankListItemResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicRankListItemResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicRankListItemResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicRankListItemResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicRankListItemResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicRankListItemResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicRankListItemResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            this.authors_ = "";
            this.status_ = "";
            this.cover_ = "";
            this.types_ = "";
            this.lastUpdateChapterName_ = "";
            this.comicPy_ = "";
            this.chapterName_ = "";
        }

        public static ComicRankListItemResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicRankListItemResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicRankListItemResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ComicRankListItemResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicRankListItemResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicRankListItemResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }

        private ComicRankListItemResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            this();
            Objects.requireNonNull(cimplements);
            t1.Cif cifM21191this = t1.m21191this();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iL = codedInputStream.l();
                        switch (iL) {
                            case 0:
                                z = true;
                            case 8:
                                this.comicId_ = codedInputStream.mo18439strictfp();
                            case 18:
                                this.title_ = codedInputStream.k();
                            case 26:
                                this.authors_ = codedInputStream.k();
                            case 34:
                                this.status_ = codedInputStream.k();
                            case 42:
                                this.cover_ = codedInputStream.k();
                            case 50:
                                this.types_ = codedInputStream.k();
                            case 56:
                                this.lastUpdatetime_ = codedInputStream.mo18446volatile();
                            case 66:
                                this.lastUpdateChapterName_ = codedInputStream.k();
                            case 74:
                                this.comicPy_ = codedInputStream.k();
                            case 80:
                                this.num_ = codedInputStream.mo18439strictfp();
                            case 88:
                                this.tagId_ = codedInputStream.mo18439strictfp();
                            case 98:
                                this.chapterName_ = codedInputStream.k();
                            case 104:
                                this.chapterId_ = codedInputStream.mo18439strictfp();
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
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    public interface ComicRankListItemResponseOrBuilder extends MessageOrBuilder {
        String getAuthors();

        ByteString getAuthorsBytes();

        int getChapterId();

        String getChapterName();

        ByteString getChapterNameBytes();

        int getComicId();

        String getComicPy();

        ByteString getComicPyBytes();

        String getCover();

        ByteString getCoverBytes();

        String getLastUpdateChapterName();

        ByteString getLastUpdateChapterNameBytes();

        long getLastUpdatetime();

        int getNum();

        String getStatus();

        ByteString getStatusBytes();

        int getTagId();

        String getTitle();

        ByteString getTitleBytes();

        String getTypes();

        ByteString getTypesBytes();
    }

    public static final class ComicRankListResponse extends GeneratedMessageV3 implements ComicRankListResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<ComicRankListItemResponse> data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final ComicRankListResponse DEFAULT_INSTANCE = new ComicRankListResponse();
        private static final Parser<ComicRankListResponse> PARSER = new Cdo<ComicRankListResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponse.1
            @Override // com.google.protobuf.Parser
            public ComicRankListResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicRankListResponse(codedInputStream, cimplements);
            }
        };

        public static ComicRankListResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicRankListResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicRankListResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicRankListResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicRankListResponse)) {
                return super.equals(obj);
            }
            ComicRankListResponse comicRankListResponse = (ComicRankListResponse) obj;
            return getErrno() == comicRankListResponse.getErrno() && getErrmsg().equals(comicRankListResponse.getErrmsg()) && getDataList().equals(comicRankListResponse.getDataList()) && this.unknownFields.equals(comicRankListResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public ComicRankListItemResponse getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public List<ComicRankListItemResponse> getDataList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public ComicRankListItemResponseOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public List<? extends ComicRankListItemResponseOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicRankListResponse> getParserForType() {
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
            return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable.m19575new(ComicRankListResponse.class, Builder.class);
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
            return new ComicRankListResponse();
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

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicRankListResponseOrBuilder {
            private int bitField0_;
            private v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> dataBuilder_;
            private List<ComicRankListItemResponse> data_;
            private Object errmsg_;
            private int errno_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new v0<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends ComicRankListItemResponse> iterable) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addData(ComicRankListItemResponse comicRankListItemResponse) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicRankListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(comicRankListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicRankListItemResponse);
                }
                return this;
            }

            public ComicRankListItemResponse.Builder addDataBuilder() {
                return (ComicRankListItemResponse.Builder) getDataFieldBuilder().m21460for(ComicRankListItemResponse.getDefaultInstance());
            }

            public Builder clearData() {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                this.errmsg_ = ComicRankListResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public ComicRankListItemResponse getData(int i) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicRankListItemResponse) v0Var.m21459final(i);
            }

            public ComicRankListItemResponse.Builder getDataBuilder(int i) {
                return (ComicRankListItemResponse.Builder) getDataFieldBuilder().m21454catch(i);
            }

            public List<ComicRankListItemResponse.Builder> getDataBuilderList() {
                return getDataFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public int getDataCount() {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public List<ComicRankListItemResponse> getDataList() {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.data_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public ComicRankListItemResponseOrBuilder getDataOrBuilder(int i) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicRankListItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public List<? extends ComicRankListItemResponseOrBuilder> getDataOrBuilderList() {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.RankListResponse.ComicRankListResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return RankListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable.m19575new(ComicRankListResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setData(int i, ComicRankListItemResponse comicRankListItemResponse) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicRankListItemResponse);
                    ensureDataIsMutable();
                    this.data_.set(i, comicRankListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicRankListItemResponse);
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
            public ComicRankListResponse build() {
                ComicRankListResponse comicRankListResponseBuildPartial = buildPartial();
                if (comicRankListResponseBuildPartial.isInitialized()) {
                    return comicRankListResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicRankListResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicRankListResponse buildPartial() {
                ComicRankListResponse comicRankListResponse = new ComicRankListResponse(this);
                comicRankListResponse.errno_ = this.errno_;
                comicRankListResponse.errmsg_ = this.errmsg_;
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var != null) {
                    comicRankListResponse.data_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    comicRankListResponse.data_ = this.data_;
                }
                onBuilt();
                return comicRankListResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicRankListResponse getDefaultInstanceForType() {
                return ComicRankListResponse.getDefaultInstance();
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

            public ComicRankListItemResponse.Builder addDataBuilder(int i) {
                return (ComicRankListItemResponse.Builder) getDataFieldBuilder().m21462if(i, ComicRankListItemResponse.getDefaultInstance());
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
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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

            public Builder addData(int i, ComicRankListItemResponse comicRankListItemResponse) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicRankListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(i, comicRankListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicRankListItemResponse);
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
                if (message instanceof ComicRankListResponse) {
                    return mergeFrom((ComicRankListResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i, ComicRankListItemResponse.Builder builder) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ComicRankListResponse comicRankListResponse) {
                if (comicRankListResponse == ComicRankListResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicRankListResponse.getErrno() != 0) {
                    setErrno(comicRankListResponse.getErrno());
                }
                if (!comicRankListResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = comicRankListResponse.errmsg_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!comicRankListResponse.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = comicRankListResponse.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(comicRankListResponse.data_);
                        }
                        onChanged();
                    }
                } else if (!comicRankListResponse.data_.isEmpty()) {
                    if (!this.dataBuilder_.m21465public()) {
                        this.dataBuilder_.m21457do(comicRankListResponse.data_);
                    } else {
                        this.dataBuilder_.m21461goto();
                        this.dataBuilder_ = null;
                        this.data_ = comicRankListResponse.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(comicRankListResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(ComicRankListItemResponse.Builder builder) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addData(int i, ComicRankListItemResponse.Builder builder) {
                v0<ComicRankListItemResponse, ComicRankListItemResponse.Builder, ComicRankListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                ComicRankListResponse comicRankListResponse = null;
                try {
                    try {
                        ComicRankListResponse comicRankListResponse2 = (ComicRankListResponse) ComicRankListResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicRankListResponse2 != null) {
                            mergeFrom(comicRankListResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicRankListResponse comicRankListResponse3 = (ComicRankListResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicRankListResponse = comicRankListResponse3;
                            if (comicRankListResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicRankListResponse != null) {
                        mergeFrom(comicRankListResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicRankListResponse comicRankListResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicRankListResponse);
        }

        public static ComicRankListResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicRankListResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicRankListResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicRankListResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicRankListResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicRankListResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicRankListResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
            this.data_ = Collections.emptyList();
        }

        public static ComicRankListResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicRankListResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicRankListResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicRankListResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.data_.add((ComicRankListItemResponse) codedInputStream.mo18430interface(ComicRankListItemResponse.parser(), cimplements));
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

        public static ComicRankListResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicRankListResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicRankListResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicRankListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicRankListResponseOrBuilder extends MessageOrBuilder {
        ComicRankListItemResponse getData(int i);

        int getDataCount();

        List<ComicRankListItemResponse> getDataList();

        ComicRankListItemResponseOrBuilder getDataOrBuilder(int i);

        List<? extends ComicRankListItemResponseOrBuilder> getDataOrBuilderList();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"ComicId", "Title", "Authors", "Status", "Cover", "Types", "LastUpdatetime", "LastUpdateChapterName", "ComicPy", "Num", "TagId", "ChapterName", "ChapterId"});
    }

    private RankListResponse() {
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
