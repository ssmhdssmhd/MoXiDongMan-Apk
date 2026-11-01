package com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news;

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
public final class NewsListResponseOuterClass {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u0018news_list_response.proto\u00127com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news\"\u008e\u0001\n\u0010NewsListResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012[\n\u0004Data\u0018\u0003 \u0003(\u000b2M.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListItemResponse\"ð\u0002\n\u0014NewsListItemResponse\u0012\u0011\n\tArticleId\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u0010\n\bFromName\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007FromUrl\u0018\u0004 \u0001(\t\u0012\u0012\n\nCreateTime\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tIsForeign\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nForeignUrl\u0018\u0007 \u0001(\t\u0012\r\n\u0005Intro\u0018\b \u0001(\t\u0012\u0010\n\bAuthorId\u0018\t \u0001(\u0005\u0012\u000e\n\u0006Status\u0018\n \u0001(\u0005\u0012\u0011\n\tRowPicUrl\u0018\u000b \u0001(\t\u0012\u0011\n\tColPicUrl\u0018\f \u0001(\t\u0012\u0011\n\tQchatShow\u0018\r \u0001(\u0005\u0012\u000f\n\u0007PageUrl\u0018\u000e \u0001(\t\u0012\u0015\n\rCommentAmount\u0018\u000f \u0001(\u0005\u0012\u0011\n\tAuthorUid\u0018\u0010 \u0001(\u0005\u0012\r\n\u0005Cover\u0018\u0011 \u0001(\t\u0012\u0010\n\bNickname\u0018\u0012 \u0001(\t\u0012\u0012\n\nMoodAmount\u0018\u0013 \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable;

    public static final class NewsListItemResponse extends GeneratedMessageV3 implements NewsListItemResponseOrBuilder {
        public static final int ARTICLEID_FIELD_NUMBER = 1;
        public static final int AUTHORID_FIELD_NUMBER = 9;
        public static final int AUTHORUID_FIELD_NUMBER = 16;
        public static final int COLPICURL_FIELD_NUMBER = 12;
        public static final int COMMENTAMOUNT_FIELD_NUMBER = 15;
        public static final int COVER_FIELD_NUMBER = 17;
        public static final int CREATETIME_FIELD_NUMBER = 5;
        public static final int FOREIGNURL_FIELD_NUMBER = 7;
        public static final int FROMNAME_FIELD_NUMBER = 3;
        public static final int FROMURL_FIELD_NUMBER = 4;
        public static final int INTRO_FIELD_NUMBER = 8;
        public static final int ISFOREIGN_FIELD_NUMBER = 6;
        public static final int MOODAMOUNT_FIELD_NUMBER = 19;
        public static final int NICKNAME_FIELD_NUMBER = 18;
        public static final int PAGEURL_FIELD_NUMBER = 14;
        public static final int QCHATSHOW_FIELD_NUMBER = 13;
        public static final int ROWPICURL_FIELD_NUMBER = 11;
        public static final int STATUS_FIELD_NUMBER = 10;
        public static final int TITLE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int articleId_;
        private int authorId_;
        private int authorUid_;
        private volatile Object colPicUrl_;
        private int commentAmount_;
        private volatile Object cover_;
        private long createTime_;
        private volatile Object foreignUrl_;
        private volatile Object fromName_;
        private volatile Object fromUrl_;
        private volatile Object intro_;
        private int isForeign_;
        private byte memoizedIsInitialized;
        private int moodAmount_;
        private volatile Object nickname_;
        private volatile Object pageUrl_;
        private int qchatShow_;
        private volatile Object rowPicUrl_;
        private int status_;
        private volatile Object title_;
        private static final NewsListItemResponse DEFAULT_INSTANCE = new NewsListItemResponse();
        private static final Parser<NewsListItemResponse> PARSER = new Cdo<NewsListItemResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponse.1
            @Override // com.google.protobuf.Parser
            public NewsListItemResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NewsListItemResponse(codedInputStream, cimplements);
            }
        };

        public static NewsListItemResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NewsListItemResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NewsListItemResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NewsListItemResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NewsListItemResponse)) {
                return super.equals(obj);
            }
            NewsListItemResponse newsListItemResponse = (NewsListItemResponse) obj;
            return getArticleId() == newsListItemResponse.getArticleId() && getTitle().equals(newsListItemResponse.getTitle()) && getFromName().equals(newsListItemResponse.getFromName()) && getFromUrl().equals(newsListItemResponse.getFromUrl()) && getCreateTime() == newsListItemResponse.getCreateTime() && getIsForeign() == newsListItemResponse.getIsForeign() && getForeignUrl().equals(newsListItemResponse.getForeignUrl()) && getIntro().equals(newsListItemResponse.getIntro()) && getAuthorId() == newsListItemResponse.getAuthorId() && getStatus() == newsListItemResponse.getStatus() && getRowPicUrl().equals(newsListItemResponse.getRowPicUrl()) && getColPicUrl().equals(newsListItemResponse.getColPicUrl()) && getQchatShow() == newsListItemResponse.getQchatShow() && getPageUrl().equals(newsListItemResponse.getPageUrl()) && getCommentAmount() == newsListItemResponse.getCommentAmount() && getAuthorUid() == newsListItemResponse.getAuthorUid() && getCover().equals(newsListItemResponse.getCover()) && getNickname().equals(newsListItemResponse.getNickname()) && getMoodAmount() == newsListItemResponse.getMoodAmount() && this.unknownFields.equals(newsListItemResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getArticleId() {
            return this.articleId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getAuthorId() {
            return this.authorId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getAuthorUid() {
            return this.authorUid_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getColPicUrl() {
            Object obj = this.colPicUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.colPicUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getColPicUrlBytes() {
            Object obj = this.colPicUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.colPicUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getCommentAmount() {
            return this.commentAmount_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getCover() {
            Object obj = this.cover_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cover_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getCoverBytes() {
            Object obj = this.cover_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cover_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public long getCreateTime() {
            return this.createTime_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getForeignUrl() {
            Object obj = this.foreignUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.foreignUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getForeignUrlBytes() {
            Object obj = this.foreignUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.foreignUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getFromName() {
            Object obj = this.fromName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.fromName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getFromNameBytes() {
            Object obj = this.fromName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getFromUrl() {
            Object obj = this.fromUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.fromUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getFromUrlBytes() {
            Object obj = this.fromUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getIntro() {
            Object obj = this.intro_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.intro_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getIntroBytes() {
            Object obj = this.intro_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.intro_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getIsForeign() {
            return this.isForeign_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getMoodAmount() {
            return this.moodAmount_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getPageUrl() {
            Object obj = this.pageUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pageUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getPageUrlBytes() {
            Object obj = this.pageUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NewsListItemResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getQchatShow() {
            return this.qchatShow_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getRowPicUrl() {
            Object obj = this.rowPicUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.rowPicUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public ByteString getRowPicUrlBytes() {
            Object obj = this.rowPicUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.rowPicUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.articleId_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            if (!getTitleBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.title_);
            }
            if (!getFromNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(3, this.fromName_);
            }
            if (!getFromUrlBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(4, this.fromUrl_);
            }
            long j = this.createTime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(5, j);
            }
            int i3 = this.isForeign_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(6, i3);
            }
            if (!getForeignUrlBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(7, this.foreignUrl_);
            }
            if (!getIntroBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(8, this.intro_);
            }
            int i4 = this.authorId_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(9, i4);
            }
            int i5 = this.status_;
            if (i5 != 0) {
                iM20874abstract += Cnative.m20874abstract(10, i5);
            }
            if (!getRowPicUrlBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(11, this.rowPicUrl_);
            }
            if (!getColPicUrlBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(12, this.colPicUrl_);
            }
            int i6 = this.qchatShow_;
            if (i6 != 0) {
                iM20874abstract += Cnative.m20874abstract(13, i6);
            }
            if (!getPageUrlBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(14, this.pageUrl_);
            }
            int i7 = this.commentAmount_;
            if (i7 != 0) {
                iM20874abstract += Cnative.m20874abstract(15, i7);
            }
            int i8 = this.authorUid_;
            if (i8 != 0) {
                iM20874abstract += Cnative.m20874abstract(16, i8);
            }
            if (!getCoverBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(17, this.cover_);
            }
            if (!getNicknameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(18, this.nickname_);
            }
            int i9 = this.moodAmount_;
            if (i9 != 0) {
                iM20874abstract += Cnative.m20874abstract(19, i9);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getArticleId()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + getFromName().hashCode()) * 37) + 4) * 53) + getFromUrl().hashCode()) * 37) + 5) * 53) + Internal.m19622native(getCreateTime())) * 37) + 6) * 53) + getIsForeign()) * 37) + 7) * 53) + getForeignUrl().hashCode()) * 37) + 8) * 53) + getIntro().hashCode()) * 37) + 9) * 53) + getAuthorId()) * 37) + 10) * 53) + getStatus()) * 37) + 11) * 53) + getRowPicUrl().hashCode()) * 37) + 12) * 53) + getColPicUrl().hashCode()) * 37) + 13) * 53) + getQchatShow()) * 37) + 14) * 53) + getPageUrl().hashCode()) * 37) + 15) * 53) + getCommentAmount()) * 37) + 16) * 53) + getAuthorUid()) * 37) + 17) * 53) + getCover().hashCode()) * 37) + 18) * 53) + getNickname().hashCode()) * 37) + 19) * 53) + getMoodAmount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable.m19575new(NewsListItemResponse.class, Builder.class);
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
            return new NewsListItemResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.articleId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.title_);
            }
            if (!getFromNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 3, this.fromName_);
            }
            if (!getFromUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 4, this.fromUrl_);
            }
            long j = this.createTime_;
            if (j != 0) {
                cnative.writeInt64(5, j);
            }
            int i2 = this.isForeign_;
            if (i2 != 0) {
                cnative.writeInt32(6, i2);
            }
            if (!getForeignUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 7, this.foreignUrl_);
            }
            if (!getIntroBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 8, this.intro_);
            }
            int i3 = this.authorId_;
            if (i3 != 0) {
                cnative.writeInt32(9, i3);
            }
            int i4 = this.status_;
            if (i4 != 0) {
                cnative.writeInt32(10, i4);
            }
            if (!getRowPicUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 11, this.rowPicUrl_);
            }
            if (!getColPicUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 12, this.colPicUrl_);
            }
            int i5 = this.qchatShow_;
            if (i5 != 0) {
                cnative.writeInt32(13, i5);
            }
            if (!getPageUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 14, this.pageUrl_);
            }
            int i6 = this.commentAmount_;
            if (i6 != 0) {
                cnative.writeInt32(15, i6);
            }
            int i7 = this.authorUid_;
            if (i7 != 0) {
                cnative.writeInt32(16, i7);
            }
            if (!getCoverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 17, this.cover_);
            }
            if (!getNicknameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 18, this.nickname_);
            }
            int i8 = this.moodAmount_;
            if (i8 != 0) {
                cnative.writeInt32(19, i8);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NewsListItemResponseOrBuilder {
            private int articleId_;
            private int authorId_;
            private int authorUid_;
            private Object colPicUrl_;
            private int commentAmount_;
            private Object cover_;
            private long createTime_;
            private Object foreignUrl_;
            private Object fromName_;
            private Object fromUrl_;
            private Object intro_;
            private int isForeign_;
            private int moodAmount_;
            private Object nickname_;
            private Object pageUrl_;
            private int qchatShow_;
            private Object rowPicUrl_;
            private int status_;
            private Object title_;

            public static final Descriptors.Cif getDescriptor() {
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearArticleId() {
                this.articleId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearAuthorId() {
                this.authorId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearAuthorUid() {
                this.authorUid_ = 0;
                onChanged();
                return this;
            }

            public Builder clearColPicUrl() {
                this.colPicUrl_ = NewsListItemResponse.getDefaultInstance().getColPicUrl();
                onChanged();
                return this;
            }

            public Builder clearCommentAmount() {
                this.commentAmount_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCover() {
                this.cover_ = NewsListItemResponse.getDefaultInstance().getCover();
                onChanged();
                return this;
            }

            public Builder clearCreateTime() {
                this.createTime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearForeignUrl() {
                this.foreignUrl_ = NewsListItemResponse.getDefaultInstance().getForeignUrl();
                onChanged();
                return this;
            }

            public Builder clearFromName() {
                this.fromName_ = NewsListItemResponse.getDefaultInstance().getFromName();
                onChanged();
                return this;
            }

            public Builder clearFromUrl() {
                this.fromUrl_ = NewsListItemResponse.getDefaultInstance().getFromUrl();
                onChanged();
                return this;
            }

            public Builder clearIntro() {
                this.intro_ = NewsListItemResponse.getDefaultInstance().getIntro();
                onChanged();
                return this;
            }

            public Builder clearIsForeign() {
                this.isForeign_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMoodAmount() {
                this.moodAmount_ = 0;
                onChanged();
                return this;
            }

            public Builder clearNickname() {
                this.nickname_ = NewsListItemResponse.getDefaultInstance().getNickname();
                onChanged();
                return this;
            }

            public Builder clearPageUrl() {
                this.pageUrl_ = NewsListItemResponse.getDefaultInstance().getPageUrl();
                onChanged();
                return this;
            }

            public Builder clearQchatShow() {
                this.qchatShow_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRowPicUrl() {
                this.rowPicUrl_ = NewsListItemResponse.getDefaultInstance().getRowPicUrl();
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.status_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.title_ = NewsListItemResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getArticleId() {
                return this.articleId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getAuthorId() {
                return this.authorId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getAuthorUid() {
                return this.authorUid_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getColPicUrl() {
                Object obj = this.colPicUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.colPicUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getColPicUrlBytes() {
                Object obj = this.colPicUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.colPicUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getCommentAmount() {
                return this.commentAmount_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getCover() {
                Object obj = this.cover_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cover_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getCoverBytes() {
                Object obj = this.cover_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cover_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public long getCreateTime() {
                return this.createTime_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getForeignUrl() {
                Object obj = this.foreignUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.foreignUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getForeignUrlBytes() {
                Object obj = this.foreignUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.foreignUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getFromName() {
                Object obj = this.fromName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fromName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getFromNameBytes() {
                Object obj = this.fromName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getFromUrl() {
                Object obj = this.fromUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fromUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getFromUrlBytes() {
                Object obj = this.fromUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getIntro() {
                Object obj = this.intro_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.intro_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getIntroBytes() {
                Object obj = this.intro_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.intro_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getIsForeign() {
                return this.isForeign_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getMoodAmount() {
                return this.moodAmount_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getNickname() {
                Object obj = this.nickname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.nickname_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getNicknameBytes() {
                Object obj = this.nickname_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.nickname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getPageUrl() {
                Object obj = this.pageUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.pageUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getPageUrlBytes() {
                Object obj = this.pageUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pageUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getQchatShow() {
                return this.qchatShow_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getRowPicUrl() {
                Object obj = this.rowPicUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.rowPicUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public ByteString getRowPicUrlBytes() {
                Object obj = this.rowPicUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.rowPicUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public int getStatus() {
                return this.status_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListItemResponseOrBuilder
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
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable.m19575new(NewsListItemResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setArticleId(int i) {
                this.articleId_ = i;
                onChanged();
                return this;
            }

            public Builder setAuthorId(int i) {
                this.authorId_ = i;
                onChanged();
                return this;
            }

            public Builder setAuthorUid(int i) {
                this.authorUid_ = i;
                onChanged();
                return this;
            }

            public Builder setColPicUrl(String str) {
                Objects.requireNonNull(str);
                this.colPicUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setColPicUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.colPicUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setCommentAmount(int i) {
                this.commentAmount_ = i;
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

            public Builder setCreateTime(long j) {
                this.createTime_ = j;
                onChanged();
                return this;
            }

            public Builder setForeignUrl(String str) {
                Objects.requireNonNull(str);
                this.foreignUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setForeignUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.foreignUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setFromName(String str) {
                Objects.requireNonNull(str);
                this.fromName_ = str;
                onChanged();
                return this;
            }

            public Builder setFromNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.fromName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setFromUrl(String str) {
                Objects.requireNonNull(str);
                this.fromUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setFromUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.fromUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIntro(String str) {
                Objects.requireNonNull(str);
                this.intro_ = str;
                onChanged();
                return this;
            }

            public Builder setIntroBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.intro_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIsForeign(int i) {
                this.isForeign_ = i;
                onChanged();
                return this;
            }

            public Builder setMoodAmount(int i) {
                this.moodAmount_ = i;
                onChanged();
                return this;
            }

            public Builder setNickname(String str) {
                Objects.requireNonNull(str);
                this.nickname_ = str;
                onChanged();
                return this;
            }

            public Builder setNicknameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.nickname_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPageUrl(String str) {
                Objects.requireNonNull(str);
                this.pageUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setPageUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.pageUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setQchatShow(int i) {
                this.qchatShow_ = i;
                onChanged();
                return this;
            }

            public Builder setRowPicUrl(String str) {
                Objects.requireNonNull(str);
                this.rowPicUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setRowPicUrlBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.rowPicUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setStatus(int i) {
                this.status_ = i;
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

            private Builder() {
                this.title_ = "";
                this.fromName_ = "";
                this.fromUrl_ = "";
                this.foreignUrl_ = "";
                this.intro_ = "";
                this.rowPicUrl_ = "";
                this.colPicUrl_ = "";
                this.pageUrl_ = "";
                this.cover_ = "";
                this.nickname_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NewsListItemResponse build() {
                NewsListItemResponse newsListItemResponseBuildPartial = buildPartial();
                if (newsListItemResponseBuildPartial.isInitialized()) {
                    return newsListItemResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) newsListItemResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NewsListItemResponse buildPartial() {
                NewsListItemResponse newsListItemResponse = new NewsListItemResponse(this);
                newsListItemResponse.articleId_ = this.articleId_;
                newsListItemResponse.title_ = this.title_;
                newsListItemResponse.fromName_ = this.fromName_;
                newsListItemResponse.fromUrl_ = this.fromUrl_;
                newsListItemResponse.createTime_ = this.createTime_;
                newsListItemResponse.isForeign_ = this.isForeign_;
                newsListItemResponse.foreignUrl_ = this.foreignUrl_;
                newsListItemResponse.intro_ = this.intro_;
                newsListItemResponse.authorId_ = this.authorId_;
                newsListItemResponse.status_ = this.status_;
                newsListItemResponse.rowPicUrl_ = this.rowPicUrl_;
                newsListItemResponse.colPicUrl_ = this.colPicUrl_;
                newsListItemResponse.qchatShow_ = this.qchatShow_;
                newsListItemResponse.pageUrl_ = this.pageUrl_;
                newsListItemResponse.commentAmount_ = this.commentAmount_;
                newsListItemResponse.authorUid_ = this.authorUid_;
                newsListItemResponse.cover_ = this.cover_;
                newsListItemResponse.nickname_ = this.nickname_;
                newsListItemResponse.moodAmount_ = this.moodAmount_;
                onBuilt();
                return newsListItemResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NewsListItemResponse getDefaultInstanceForType() {
                return NewsListItemResponse.getDefaultInstance();
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
                this.articleId_ = 0;
                this.title_ = "";
                this.fromName_ = "";
                this.fromUrl_ = "";
                this.createTime_ = 0L;
                this.isForeign_ = 0;
                this.foreignUrl_ = "";
                this.intro_ = "";
                this.authorId_ = 0;
                this.status_ = 0;
                this.rowPicUrl_ = "";
                this.colPicUrl_ = "";
                this.qchatShow_ = 0;
                this.pageUrl_ = "";
                this.commentAmount_ = 0;
                this.authorUid_ = 0;
                this.cover_ = "";
                this.nickname_ = "";
                this.moodAmount_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NewsListItemResponse) {
                    return mergeFrom((NewsListItemResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(NewsListItemResponse newsListItemResponse) {
                if (newsListItemResponse == NewsListItemResponse.getDefaultInstance()) {
                    return this;
                }
                if (newsListItemResponse.getArticleId() != 0) {
                    setArticleId(newsListItemResponse.getArticleId());
                }
                if (!newsListItemResponse.getTitle().isEmpty()) {
                    this.title_ = newsListItemResponse.title_;
                    onChanged();
                }
                if (!newsListItemResponse.getFromName().isEmpty()) {
                    this.fromName_ = newsListItemResponse.fromName_;
                    onChanged();
                }
                if (!newsListItemResponse.getFromUrl().isEmpty()) {
                    this.fromUrl_ = newsListItemResponse.fromUrl_;
                    onChanged();
                }
                if (newsListItemResponse.getCreateTime() != 0) {
                    setCreateTime(newsListItemResponse.getCreateTime());
                }
                if (newsListItemResponse.getIsForeign() != 0) {
                    setIsForeign(newsListItemResponse.getIsForeign());
                }
                if (!newsListItemResponse.getForeignUrl().isEmpty()) {
                    this.foreignUrl_ = newsListItemResponse.foreignUrl_;
                    onChanged();
                }
                if (!newsListItemResponse.getIntro().isEmpty()) {
                    this.intro_ = newsListItemResponse.intro_;
                    onChanged();
                }
                if (newsListItemResponse.getAuthorId() != 0) {
                    setAuthorId(newsListItemResponse.getAuthorId());
                }
                if (newsListItemResponse.getStatus() != 0) {
                    setStatus(newsListItemResponse.getStatus());
                }
                if (!newsListItemResponse.getRowPicUrl().isEmpty()) {
                    this.rowPicUrl_ = newsListItemResponse.rowPicUrl_;
                    onChanged();
                }
                if (!newsListItemResponse.getColPicUrl().isEmpty()) {
                    this.colPicUrl_ = newsListItemResponse.colPicUrl_;
                    onChanged();
                }
                if (newsListItemResponse.getQchatShow() != 0) {
                    setQchatShow(newsListItemResponse.getQchatShow());
                }
                if (!newsListItemResponse.getPageUrl().isEmpty()) {
                    this.pageUrl_ = newsListItemResponse.pageUrl_;
                    onChanged();
                }
                if (newsListItemResponse.getCommentAmount() != 0) {
                    setCommentAmount(newsListItemResponse.getCommentAmount());
                }
                if (newsListItemResponse.getAuthorUid() != 0) {
                    setAuthorUid(newsListItemResponse.getAuthorUid());
                }
                if (!newsListItemResponse.getCover().isEmpty()) {
                    this.cover_ = newsListItemResponse.cover_;
                    onChanged();
                }
                if (!newsListItemResponse.getNickname().isEmpty()) {
                    this.nickname_ = newsListItemResponse.nickname_;
                    onChanged();
                }
                if (newsListItemResponse.getMoodAmount() != 0) {
                    setMoodAmount(newsListItemResponse.getMoodAmount());
                }
                mergeUnknownFields(newsListItemResponse.unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.title_ = "";
                this.fromName_ = "";
                this.fromUrl_ = "";
                this.foreignUrl_ = "";
                this.intro_ = "";
                this.rowPicUrl_ = "";
                this.colPicUrl_ = "";
                this.pageUrl_ = "";
                this.cover_ = "";
                this.nickname_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NewsListItemResponse newsListItemResponse = null;
                try {
                    try {
                        NewsListItemResponse newsListItemResponse2 = (NewsListItemResponse) NewsListItemResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (newsListItemResponse2 != null) {
                            mergeFrom(newsListItemResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NewsListItemResponse newsListItemResponse3 = (NewsListItemResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            newsListItemResponse = newsListItemResponse3;
                            if (newsListItemResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (newsListItemResponse != null) {
                        mergeFrom(newsListItemResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NewsListItemResponse newsListItemResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(newsListItemResponse);
        }

        public static NewsListItemResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NewsListItemResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NewsListItemResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NewsListItemResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NewsListItemResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NewsListItemResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NewsListItemResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            this.fromName_ = "";
            this.fromUrl_ = "";
            this.foreignUrl_ = "";
            this.intro_ = "";
            this.rowPicUrl_ = "";
            this.colPicUrl_ = "";
            this.pageUrl_ = "";
            this.cover_ = "";
            this.nickname_ = "";
        }

        public static NewsListItemResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NewsListItemResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NewsListItemResponse parseFrom(InputStream inputStream) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static NewsListItemResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NewsListItemResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NewsListItemResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NewsListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }

        private NewsListItemResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.articleId_ = codedInputStream.mo18439strictfp();
                            case 18:
                                this.title_ = codedInputStream.k();
                            case 26:
                                this.fromName_ = codedInputStream.k();
                            case 34:
                                this.fromUrl_ = codedInputStream.k();
                            case 40:
                                this.createTime_ = codedInputStream.mo18446volatile();
                            case 48:
                                this.isForeign_ = codedInputStream.mo18439strictfp();
                            case 58:
                                this.foreignUrl_ = codedInputStream.k();
                            case 66:
                                this.intro_ = codedInputStream.k();
                            case 72:
                                this.authorId_ = codedInputStream.mo18439strictfp();
                            case 80:
                                this.status_ = codedInputStream.mo18439strictfp();
                            case 90:
                                this.rowPicUrl_ = codedInputStream.k();
                            case 98:
                                this.colPicUrl_ = codedInputStream.k();
                            case 104:
                                this.qchatShow_ = codedInputStream.mo18439strictfp();
                            case 114:
                                this.pageUrl_ = codedInputStream.k();
                            case 120:
                                this.commentAmount_ = codedInputStream.mo18439strictfp();
                            case 128:
                                this.authorUid_ = codedInputStream.mo18439strictfp();
                            case 138:
                                this.cover_ = codedInputStream.k();
                            case 146:
                                this.nickname_ = codedInputStream.k();
                            case 152:
                                this.moodAmount_ = codedInputStream.mo18439strictfp();
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

    public interface NewsListItemResponseOrBuilder extends MessageOrBuilder {
        int getArticleId();

        int getAuthorId();

        int getAuthorUid();

        String getColPicUrl();

        ByteString getColPicUrlBytes();

        int getCommentAmount();

        String getCover();

        ByteString getCoverBytes();

        long getCreateTime();

        String getForeignUrl();

        ByteString getForeignUrlBytes();

        String getFromName();

        ByteString getFromNameBytes();

        String getFromUrl();

        ByteString getFromUrlBytes();

        String getIntro();

        ByteString getIntroBytes();

        int getIsForeign();

        int getMoodAmount();

        String getNickname();

        ByteString getNicknameBytes();

        String getPageUrl();

        ByteString getPageUrlBytes();

        int getQchatShow();

        String getRowPicUrl();

        ByteString getRowPicUrlBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();
    }

    public static final class NewsListResponse extends GeneratedMessageV3 implements NewsListResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<NewsListItemResponse> data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final NewsListResponse DEFAULT_INSTANCE = new NewsListResponse();
        private static final Parser<NewsListResponse> PARSER = new Cdo<NewsListResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponse.1
            @Override // com.google.protobuf.Parser
            public NewsListResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NewsListResponse(codedInputStream, cimplements);
            }
        };

        public static NewsListResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NewsListResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NewsListResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NewsListResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NewsListResponse)) {
                return super.equals(obj);
            }
            NewsListResponse newsListResponse = (NewsListResponse) obj;
            return getErrno() == newsListResponse.getErrno() && getErrmsg().equals(newsListResponse.getErrmsg()) && getDataList().equals(newsListResponse.getDataList()) && this.unknownFields.equals(newsListResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public NewsListItemResponse getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public List<NewsListItemResponse> getDataList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public NewsListItemResponseOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public List<? extends NewsListItemResponseOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NewsListResponse> getParserForType() {
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
            return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable.m19575new(NewsListResponse.class, Builder.class);
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
            return new NewsListResponse();
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

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NewsListResponseOrBuilder {
            private int bitField0_;
            private v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> dataBuilder_;
            private List<NewsListItemResponse> data_;
            private Object errmsg_;
            private int errno_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new v0<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends NewsListItemResponse> iterable) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addData(NewsListItemResponse newsListItemResponse) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(newsListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(newsListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(newsListItemResponse);
                }
                return this;
            }

            public NewsListItemResponse.Builder addDataBuilder() {
                return (NewsListItemResponse.Builder) getDataFieldBuilder().m21460for(NewsListItemResponse.getDefaultInstance());
            }

            public Builder clearData() {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                this.errmsg_ = NewsListResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public NewsListItemResponse getData(int i) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (NewsListItemResponse) v0Var.m21459final(i);
            }

            public NewsListItemResponse.Builder getDataBuilder(int i) {
                return (NewsListItemResponse.Builder) getDataFieldBuilder().m21454catch(i);
            }

            public List<NewsListItemResponse.Builder> getDataBuilderList() {
                return getDataFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public int getDataCount() {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public List<NewsListItemResponse> getDataList() {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.data_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public NewsListItemResponseOrBuilder getDataOrBuilder(int i) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (NewsListItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public List<? extends NewsListItemResponseOrBuilder> getDataOrBuilderList() {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListResponseOuterClass.NewsListResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NewsListResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable.m19575new(NewsListResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setData(int i, NewsListItemResponse newsListItemResponse) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(newsListItemResponse);
                    ensureDataIsMutable();
                    this.data_.set(i, newsListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, newsListItemResponse);
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
            public NewsListResponse build() {
                NewsListResponse newsListResponseBuildPartial = buildPartial();
                if (newsListResponseBuildPartial.isInitialized()) {
                    return newsListResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) newsListResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NewsListResponse buildPartial() {
                NewsListResponse newsListResponse = new NewsListResponse(this);
                newsListResponse.errno_ = this.errno_;
                newsListResponse.errmsg_ = this.errmsg_;
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var != null) {
                    newsListResponse.data_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    newsListResponse.data_ = this.data_;
                }
                onBuilt();
                return newsListResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NewsListResponse getDefaultInstanceForType() {
                return NewsListResponse.getDefaultInstance();
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

            public NewsListItemResponse.Builder addDataBuilder(int i) {
                return (NewsListItemResponse.Builder) getDataFieldBuilder().m21462if(i, NewsListItemResponse.getDefaultInstance());
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
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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

            public Builder addData(int i, NewsListItemResponse newsListItemResponse) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(newsListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(i, newsListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, newsListItemResponse);
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
                if (message instanceof NewsListResponse) {
                    return mergeFrom((NewsListResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i, NewsListItemResponse.Builder builder) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(NewsListResponse newsListResponse) {
                if (newsListResponse == NewsListResponse.getDefaultInstance()) {
                    return this;
                }
                if (newsListResponse.getErrno() != 0) {
                    setErrno(newsListResponse.getErrno());
                }
                if (!newsListResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = newsListResponse.errmsg_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!newsListResponse.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = newsListResponse.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(newsListResponse.data_);
                        }
                        onChanged();
                    }
                } else if (!newsListResponse.data_.isEmpty()) {
                    if (!this.dataBuilder_.m21465public()) {
                        this.dataBuilder_.m21457do(newsListResponse.data_);
                    } else {
                        this.dataBuilder_.m21461goto();
                        this.dataBuilder_ = null;
                        this.data_ = newsListResponse.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(newsListResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(NewsListItemResponse.Builder builder) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addData(int i, NewsListItemResponse.Builder builder) {
                v0<NewsListItemResponse, NewsListItemResponse.Builder, NewsListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                NewsListResponse newsListResponse = null;
                try {
                    try {
                        NewsListResponse newsListResponse2 = (NewsListResponse) NewsListResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (newsListResponse2 != null) {
                            mergeFrom(newsListResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NewsListResponse newsListResponse3 = (NewsListResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            newsListResponse = newsListResponse3;
                            if (newsListResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (newsListResponse != null) {
                        mergeFrom(newsListResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NewsListResponse newsListResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(newsListResponse);
        }

        public static NewsListResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NewsListResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NewsListResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NewsListResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NewsListResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NewsListResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NewsListResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
            this.data_ = Collections.emptyList();
        }

        public static NewsListResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NewsListResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NewsListResponse parseFrom(InputStream inputStream) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NewsListResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.data_.add((NewsListItemResponse) codedInputStream.mo18430interface(NewsListItemResponse.parser(), cimplements));
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

        public static NewsListResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NewsListResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NewsListResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NewsListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NewsListResponseOrBuilder extends MessageOrBuilder {
        NewsListItemResponse getData(int i);

        int getDataCount();

        List<NewsListItemResponse> getDataList();

        NewsListItemResponseOrBuilder getDataOrBuilder(int i);

        List<? extends NewsListItemResponseOrBuilder> getDataOrBuilderList();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"ArticleId", "Title", "FromName", "FromUrl", "CreateTime", "IsForeign", "ForeignUrl", "Intro", "AuthorId", "Status", "RowPicUrl", "ColPicUrl", "QchatShow", "PageUrl", "CommentAmount", "AuthorUid", "Cover", "Nickname", "MoodAmount"});
    }

    private NewsListResponseOuterClass() {
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
