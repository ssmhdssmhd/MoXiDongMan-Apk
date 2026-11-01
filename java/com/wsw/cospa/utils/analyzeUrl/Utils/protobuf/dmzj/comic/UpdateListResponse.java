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
public final class UpdateListResponse {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u001aupdate_list_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u009d\u0001\n\u0017ComicUpdateListResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012c\n\u0004Data\u0018\u0003 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicUpdateListItemResponse\"à\u0001\n\u001bComicUpdateListItemResponse\u0012\u000f\n\u0007ComicId\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006Islong\u0018\u0003 \u0001(\b\u0012\u000f\n\u0007Authors\u0018\u0004 \u0001(\t\u0012\r\n\u0005Types\u0018\u0005 \u0001(\t\u0012\r\n\u0005Cover\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006Status\u0018\u0007 \u0001(\t\u0012\u001d\n\u0015LastUpdateChapterName\u0018\b \u0001(\t\u0012\u001b\n\u0013LastUpdateChapterId\u0018\t \u0001(\u0005\u0012\u0016\n\u000eLastUpdatetime\u0018\n \u0001(\u0003b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_fieldAccessorTable;

    public static final class ComicUpdateListItemResponse extends GeneratedMessageV3 implements ComicUpdateListItemResponseOrBuilder {
        public static final int AUTHORS_FIELD_NUMBER = 4;
        public static final int COMICID_FIELD_NUMBER = 1;
        public static final int COVER_FIELD_NUMBER = 6;
        public static final int ISLONG_FIELD_NUMBER = 3;
        public static final int LASTUPDATECHAPTERID_FIELD_NUMBER = 9;
        public static final int LASTUPDATECHAPTERNAME_FIELD_NUMBER = 8;
        public static final int LASTUPDATETIME_FIELD_NUMBER = 10;
        public static final int STATUS_FIELD_NUMBER = 7;
        public static final int TITLE_FIELD_NUMBER = 2;
        public static final int TYPES_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private volatile Object authors_;
        private int comicId_;
        private volatile Object cover_;
        private boolean islong_;
        private int lastUpdateChapterId_;
        private volatile Object lastUpdateChapterName_;
        private long lastUpdatetime_;
        private byte memoizedIsInitialized;
        private volatile Object status_;
        private volatile Object title_;
        private volatile Object types_;
        private static final ComicUpdateListItemResponse DEFAULT_INSTANCE = new ComicUpdateListItemResponse();
        private static final Parser<ComicUpdateListItemResponse> PARSER = new Cdo<ComicUpdateListItemResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponse.1
            @Override // com.google.protobuf.Parser
            public ComicUpdateListItemResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicUpdateListItemResponse(codedInputStream, cimplements);
            }
        };

        public static ComicUpdateListItemResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicUpdateListItemResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicUpdateListItemResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicUpdateListItemResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicUpdateListItemResponse)) {
                return super.equals(obj);
            }
            ComicUpdateListItemResponse comicUpdateListItemResponse = (ComicUpdateListItemResponse) obj;
            return getComicId() == comicUpdateListItemResponse.getComicId() && getTitle().equals(comicUpdateListItemResponse.getTitle()) && getIslong() == comicUpdateListItemResponse.getIslong() && getAuthors().equals(comicUpdateListItemResponse.getAuthors()) && getTypes().equals(comicUpdateListItemResponse.getTypes()) && getCover().equals(comicUpdateListItemResponse.getCover()) && getStatus().equals(comicUpdateListItemResponse.getStatus()) && getLastUpdateChapterName().equals(comicUpdateListItemResponse.getLastUpdateChapterName()) && getLastUpdateChapterId() == comicUpdateListItemResponse.getLastUpdateChapterId() && getLastUpdatetime() == comicUpdateListItemResponse.getLastUpdatetime() && this.unknownFields.equals(comicUpdateListItemResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getAuthors() {
            Object obj = this.authors_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.authors_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public ByteString getAuthorsBytes() {
            Object obj = this.authors_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authors_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public int getComicId() {
            return this.comicId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getCover() {
            Object obj = this.cover_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cover_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public ByteString getCoverBytes() {
            Object obj = this.cover_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cover_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public boolean getIslong() {
            return this.islong_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public int getLastUpdateChapterId() {
            return this.lastUpdateChapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getLastUpdateChapterName() {
            Object obj = this.lastUpdateChapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastUpdateChapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public ByteString getLastUpdateChapterNameBytes() {
            Object obj = this.lastUpdateChapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public long getLastUpdatetime() {
            return this.lastUpdatetime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicUpdateListItemResponse> getParserForType() {
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
            boolean z = this.islong_;
            if (z) {
                iM20874abstract += Cnative.m20885goto(3, z);
            }
            if (!getAuthorsBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(4, this.authors_);
            }
            if (!getTypesBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(5, this.types_);
            }
            if (!getCoverBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(6, this.cover_);
            }
            if (!getStatusBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(7, this.status_);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(8, this.lastUpdateChapterName_);
            }
            int i3 = this.lastUpdateChapterId_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(9, i3);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(10, j);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getStatus() {
            Object obj = this.status_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.status_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public ByteString getStatusBytes() {
            Object obj = this.status_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.status_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
        public String getTypes() {
            Object obj = this.types_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.types_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getComicId()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 3) * 53) + Internal.m19610catch(getIslong())) * 37) + 4) * 53) + getAuthors().hashCode()) * 37) + 5) * 53) + getTypes().hashCode()) * 37) + 6) * 53) + getCover().hashCode()) * 37) + 7) * 53) + getStatus().hashCode()) * 37) + 8) * 53) + getLastUpdateChapterName().hashCode()) * 37) + 9) * 53) + getLastUpdateChapterId()) * 37) + 10) * 53) + Internal.m19622native(getLastUpdatetime())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_fieldAccessorTable.m19575new(ComicUpdateListItemResponse.class, Builder.class);
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
            return new ComicUpdateListItemResponse();
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
            boolean z = this.islong_;
            if (z) {
                cnative.writeBool(3, z);
            }
            if (!getAuthorsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 4, this.authors_);
            }
            if (!getTypesBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 5, this.types_);
            }
            if (!getCoverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 6, this.cover_);
            }
            if (!getStatusBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 7, this.status_);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 8, this.lastUpdateChapterName_);
            }
            int i2 = this.lastUpdateChapterId_;
            if (i2 != 0) {
                cnative.writeInt32(9, i2);
            }
            long j = this.lastUpdatetime_;
            if (j != 0) {
                cnative.writeInt64(10, j);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicUpdateListItemResponseOrBuilder {
            private Object authors_;
            private int comicId_;
            private Object cover_;
            private boolean islong_;
            private int lastUpdateChapterId_;
            private Object lastUpdateChapterName_;
            private long lastUpdatetime_;
            private Object status_;
            private Object title_;
            private Object types_;

            public static final Descriptors.Cif getDescriptor() {
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAuthors() {
                this.authors_ = ComicUpdateListItemResponse.getDefaultInstance().getAuthors();
                onChanged();
                return this;
            }

            public Builder clearComicId() {
                this.comicId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCover() {
                this.cover_ = ComicUpdateListItemResponse.getDefaultInstance().getCover();
                onChanged();
                return this;
            }

            public Builder clearIslong() {
                this.islong_ = false;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterId() {
                this.lastUpdateChapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterName() {
                this.lastUpdateChapterName_ = ComicUpdateListItemResponse.getDefaultInstance().getLastUpdateChapterName();
                onChanged();
                return this;
            }

            public Builder clearLastUpdatetime() {
                this.lastUpdatetime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.status_ = ComicUpdateListItemResponse.getDefaultInstance().getStatus();
                onChanged();
                return this;
            }

            public Builder clearTitle() {
                this.title_ = ComicUpdateListItemResponse.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public Builder clearTypes() {
                this.types_ = ComicUpdateListItemResponse.getDefaultInstance().getTypes();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getAuthors() {
                Object obj = this.authors_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.authors_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public ByteString getAuthorsBytes() {
                Object obj = this.authors_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authors_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public int getComicId() {
                return this.comicId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getCover() {
                Object obj = this.cover_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cover_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
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
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public boolean getIslong() {
                return this.islong_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public int getLastUpdateChapterId() {
                return this.lastUpdateChapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getLastUpdateChapterName() {
                Object obj = this.lastUpdateChapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastUpdateChapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public ByteString getLastUpdateChapterNameBytes() {
                Object obj = this.lastUpdateChapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public long getLastUpdatetime() {
                return this.lastUpdatetime_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getStatus() {
                Object obj = this.status_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.status_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public ByteString getStatusBytes() {
                Object obj = this.status_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.status_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
            public String getTypes() {
                Object obj = this.types_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.types_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListItemResponseOrBuilder
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
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_fieldAccessorTable.m19575new(ComicUpdateListItemResponse.class, Builder.class);
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

            public Builder setComicId(int i) {
                this.comicId_ = i;
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

            public Builder setIslong(boolean z) {
                this.islong_ = z;
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
                this.types_ = "";
                this.cover_ = "";
                this.status_ = "";
                this.lastUpdateChapterName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicUpdateListItemResponse build() {
                ComicUpdateListItemResponse comicUpdateListItemResponseBuildPartial = buildPartial();
                if (comicUpdateListItemResponseBuildPartial.isInitialized()) {
                    return comicUpdateListItemResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicUpdateListItemResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicUpdateListItemResponse buildPartial() {
                ComicUpdateListItemResponse comicUpdateListItemResponse = new ComicUpdateListItemResponse(this);
                comicUpdateListItemResponse.comicId_ = this.comicId_;
                comicUpdateListItemResponse.title_ = this.title_;
                comicUpdateListItemResponse.islong_ = this.islong_;
                comicUpdateListItemResponse.authors_ = this.authors_;
                comicUpdateListItemResponse.types_ = this.types_;
                comicUpdateListItemResponse.cover_ = this.cover_;
                comicUpdateListItemResponse.status_ = this.status_;
                comicUpdateListItemResponse.lastUpdateChapterName_ = this.lastUpdateChapterName_;
                comicUpdateListItemResponse.lastUpdateChapterId_ = this.lastUpdateChapterId_;
                comicUpdateListItemResponse.lastUpdatetime_ = this.lastUpdatetime_;
                onBuilt();
                return comicUpdateListItemResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicUpdateListItemResponse getDefaultInstanceForType() {
                return ComicUpdateListItemResponse.getDefaultInstance();
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
                this.islong_ = false;
                this.authors_ = "";
                this.types_ = "";
                this.cover_ = "";
                this.status_ = "";
                this.lastUpdateChapterName_ = "";
                this.lastUpdateChapterId_ = 0;
                this.lastUpdatetime_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ComicUpdateListItemResponse) {
                    return mergeFrom((ComicUpdateListItemResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ComicUpdateListItemResponse comicUpdateListItemResponse) {
                if (comicUpdateListItemResponse == ComicUpdateListItemResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicUpdateListItemResponse.getComicId() != 0) {
                    setComicId(comicUpdateListItemResponse.getComicId());
                }
                if (!comicUpdateListItemResponse.getTitle().isEmpty()) {
                    this.title_ = comicUpdateListItemResponse.title_;
                    onChanged();
                }
                if (comicUpdateListItemResponse.getIslong()) {
                    setIslong(comicUpdateListItemResponse.getIslong());
                }
                if (!comicUpdateListItemResponse.getAuthors().isEmpty()) {
                    this.authors_ = comicUpdateListItemResponse.authors_;
                    onChanged();
                }
                if (!comicUpdateListItemResponse.getTypes().isEmpty()) {
                    this.types_ = comicUpdateListItemResponse.types_;
                    onChanged();
                }
                if (!comicUpdateListItemResponse.getCover().isEmpty()) {
                    this.cover_ = comicUpdateListItemResponse.cover_;
                    onChanged();
                }
                if (!comicUpdateListItemResponse.getStatus().isEmpty()) {
                    this.status_ = comicUpdateListItemResponse.status_;
                    onChanged();
                }
                if (!comicUpdateListItemResponse.getLastUpdateChapterName().isEmpty()) {
                    this.lastUpdateChapterName_ = comicUpdateListItemResponse.lastUpdateChapterName_;
                    onChanged();
                }
                if (comicUpdateListItemResponse.getLastUpdateChapterId() != 0) {
                    setLastUpdateChapterId(comicUpdateListItemResponse.getLastUpdateChapterId());
                }
                if (comicUpdateListItemResponse.getLastUpdatetime() != 0) {
                    setLastUpdatetime(comicUpdateListItemResponse.getLastUpdatetime());
                }
                mergeUnknownFields(comicUpdateListItemResponse.unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.title_ = "";
                this.authors_ = "";
                this.types_ = "";
                this.cover_ = "";
                this.status_ = "";
                this.lastUpdateChapterName_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                ComicUpdateListItemResponse comicUpdateListItemResponse = null;
                try {
                    try {
                        ComicUpdateListItemResponse comicUpdateListItemResponse2 = (ComicUpdateListItemResponse) ComicUpdateListItemResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicUpdateListItemResponse2 != null) {
                            mergeFrom(comicUpdateListItemResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicUpdateListItemResponse comicUpdateListItemResponse3 = (ComicUpdateListItemResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicUpdateListItemResponse = comicUpdateListItemResponse3;
                            if (comicUpdateListItemResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicUpdateListItemResponse != null) {
                        mergeFrom(comicUpdateListItemResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicUpdateListItemResponse comicUpdateListItemResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicUpdateListItemResponse);
        }

        public static ComicUpdateListItemResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicUpdateListItemResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicUpdateListItemResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicUpdateListItemResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicUpdateListItemResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicUpdateListItemResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicUpdateListItemResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.title_ = "";
            this.authors_ = "";
            this.types_ = "";
            this.cover_ = "";
            this.status_ = "";
            this.lastUpdateChapterName_ = "";
        }

        public static ComicUpdateListItemResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicUpdateListItemResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicUpdateListItemResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ComicUpdateListItemResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicUpdateListItemResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        private ComicUpdateListItemResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                            case 24:
                                this.islong_ = codedInputStream.mo18437return();
                            case 34:
                                this.authors_ = codedInputStream.k();
                            case 42:
                                this.types_ = codedInputStream.k();
                            case 50:
                                this.cover_ = codedInputStream.k();
                            case 58:
                                this.status_ = codedInputStream.k();
                            case 66:
                                this.lastUpdateChapterName_ = codedInputStream.k();
                            case 72:
                                this.lastUpdateChapterId_ = codedInputStream.mo18439strictfp();
                            case 80:
                                this.lastUpdatetime_ = codedInputStream.mo18446volatile();
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

        public static ComicUpdateListItemResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListItemResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicUpdateListItemResponseOrBuilder extends MessageOrBuilder {
        String getAuthors();

        ByteString getAuthorsBytes();

        int getComicId();

        String getCover();

        ByteString getCoverBytes();

        boolean getIslong();

        int getLastUpdateChapterId();

        String getLastUpdateChapterName();

        ByteString getLastUpdateChapterNameBytes();

        long getLastUpdatetime();

        String getStatus();

        ByteString getStatusBytes();

        String getTitle();

        ByteString getTitleBytes();

        String getTypes();

        ByteString getTypesBytes();
    }

    public static final class ComicUpdateListResponse extends GeneratedMessageV3 implements ComicUpdateListResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<ComicUpdateListItemResponse> data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final ComicUpdateListResponse DEFAULT_INSTANCE = new ComicUpdateListResponse();
        private static final Parser<ComicUpdateListResponse> PARSER = new Cdo<ComicUpdateListResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponse.1
            @Override // com.google.protobuf.Parser
            public ComicUpdateListResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new ComicUpdateListResponse(codedInputStream, cimplements);
            }
        };

        public static ComicUpdateListResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ComicUpdateListResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ComicUpdateListResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ComicUpdateListResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ComicUpdateListResponse)) {
                return super.equals(obj);
            }
            ComicUpdateListResponse comicUpdateListResponse = (ComicUpdateListResponse) obj;
            return getErrno() == comicUpdateListResponse.getErrno() && getErrmsg().equals(comicUpdateListResponse.getErrmsg()) && getDataList().equals(comicUpdateListResponse.getDataList()) && this.unknownFields.equals(comicUpdateListResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public ComicUpdateListItemResponse getData(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public List<ComicUpdateListItemResponse> getDataList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public ComicUpdateListItemResponseOrBuilder getDataOrBuilder(int i) {
            return this.data_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public List<? extends ComicUpdateListItemResponseOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ComicUpdateListResponse> getParserForType() {
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
            return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_fieldAccessorTable.m19575new(ComicUpdateListResponse.class, Builder.class);
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
            return new ComicUpdateListResponse();
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

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements ComicUpdateListResponseOrBuilder {
            private int bitField0_;
            private v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> dataBuilder_;
            private List<ComicUpdateListItemResponse> data_;
            private Object errmsg_;
            private int errno_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new v0<>(this.data_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends ComicUpdateListItemResponse> iterable) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addData(ComicUpdateListItemResponse comicUpdateListItemResponse) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicUpdateListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(comicUpdateListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(comicUpdateListItemResponse);
                }
                return this;
            }

            public ComicUpdateListItemResponse.Builder addDataBuilder() {
                return (ComicUpdateListItemResponse.Builder) getDataFieldBuilder().m21460for(ComicUpdateListItemResponse.getDefaultInstance());
            }

            public Builder clearData() {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                this.errmsg_ = ComicUpdateListResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public ComicUpdateListItemResponse getData(int i) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicUpdateListItemResponse) v0Var.m21459final(i);
            }

            public ComicUpdateListItemResponse.Builder getDataBuilder(int i) {
                return (ComicUpdateListItemResponse.Builder) getDataFieldBuilder().m21454catch(i);
            }

            public List<ComicUpdateListItemResponse.Builder> getDataBuilderList() {
                return getDataFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public int getDataCount() {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public List<ComicUpdateListItemResponse> getDataList() {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.data_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public ComicUpdateListItemResponseOrBuilder getDataOrBuilder(int i) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var == null ? this.data_.get(i) : (ComicUpdateListItemResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public List<? extends ComicUpdateListItemResponseOrBuilder> getDataOrBuilderList() {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.data_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.UpdateListResponse.ComicUpdateListResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UpdateListResponse.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_fieldAccessorTable.m19575new(ComicUpdateListResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
            }

            public Builder setData(int i, ComicUpdateListItemResponse comicUpdateListItemResponse) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicUpdateListItemResponse);
                    ensureDataIsMutable();
                    this.data_.set(i, comicUpdateListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, comicUpdateListItemResponse);
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
            public ComicUpdateListResponse build() {
                ComicUpdateListResponse comicUpdateListResponseBuildPartial = buildPartial();
                if (comicUpdateListResponseBuildPartial.isInitialized()) {
                    return comicUpdateListResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) comicUpdateListResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ComicUpdateListResponse buildPartial() {
                ComicUpdateListResponse comicUpdateListResponse = new ComicUpdateListResponse(this);
                comicUpdateListResponse.errno_ = this.errno_;
                comicUpdateListResponse.errmsg_ = this.errmsg_;
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var != null) {
                    comicUpdateListResponse.data_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    comicUpdateListResponse.data_ = this.data_;
                }
                onBuilt();
                return comicUpdateListResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ComicUpdateListResponse getDefaultInstanceForType() {
                return ComicUpdateListResponse.getDefaultInstance();
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

            public ComicUpdateListItemResponse.Builder addDataBuilder(int i) {
                return (ComicUpdateListItemResponse.Builder) getDataFieldBuilder().m21462if(i, ComicUpdateListItemResponse.getDefaultInstance());
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
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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

            public Builder addData(int i, ComicUpdateListItemResponse comicUpdateListItemResponse) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(comicUpdateListItemResponse);
                    ensureDataIsMutable();
                    this.data_.add(i, comicUpdateListItemResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, comicUpdateListItemResponse);
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
                if (message instanceof ComicUpdateListResponse) {
                    return mergeFrom((ComicUpdateListResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i, ComicUpdateListItemResponse.Builder builder) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ComicUpdateListResponse comicUpdateListResponse) {
                if (comicUpdateListResponse == ComicUpdateListResponse.getDefaultInstance()) {
                    return this;
                }
                if (comicUpdateListResponse.getErrno() != 0) {
                    setErrno(comicUpdateListResponse.getErrno());
                }
                if (!comicUpdateListResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = comicUpdateListResponse.errmsg_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!comicUpdateListResponse.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = comicUpdateListResponse.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(comicUpdateListResponse.data_);
                        }
                        onChanged();
                    }
                } else if (!comicUpdateListResponse.data_.isEmpty()) {
                    if (!this.dataBuilder_.m21465public()) {
                        this.dataBuilder_.m21457do(comicUpdateListResponse.data_);
                    } else {
                        this.dataBuilder_.m21461goto();
                        this.dataBuilder_ = null;
                        this.data_ = comicUpdateListResponse.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(comicUpdateListResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(ComicUpdateListItemResponse.Builder builder) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
                if (v0Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            public Builder addData(int i, ComicUpdateListItemResponse.Builder builder) {
                v0<ComicUpdateListItemResponse, ComicUpdateListItemResponse.Builder, ComicUpdateListItemResponseOrBuilder> v0Var = this.dataBuilder_;
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
                ComicUpdateListResponse comicUpdateListResponse = null;
                try {
                    try {
                        ComicUpdateListResponse comicUpdateListResponse2 = (ComicUpdateListResponse) ComicUpdateListResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (comicUpdateListResponse2 != null) {
                            mergeFrom(comicUpdateListResponse2);
                        }
                        return this;
                    } catch (n e) {
                        ComicUpdateListResponse comicUpdateListResponse3 = (ComicUpdateListResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            comicUpdateListResponse = comicUpdateListResponse3;
                            if (comicUpdateListResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (comicUpdateListResponse != null) {
                        mergeFrom(comicUpdateListResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ComicUpdateListResponse comicUpdateListResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(comicUpdateListResponse);
        }

        public static ComicUpdateListResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private ComicUpdateListResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ComicUpdateListResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicUpdateListResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ComicUpdateListResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ComicUpdateListResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ComicUpdateListResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
            this.data_ = Collections.emptyList();
        }

        public static ComicUpdateListResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ComicUpdateListResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static ComicUpdateListResponse parseFrom(InputStream inputStream) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ComicUpdateListResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.data_.add((ComicUpdateListItemResponse) codedInputStream.mo18430interface(ComicUpdateListItemResponse.parser(), cimplements));
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

        public static ComicUpdateListResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static ComicUpdateListResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ComicUpdateListResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (ComicUpdateListResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface ComicUpdateListResponseOrBuilder extends MessageOrBuilder {
        ComicUpdateListItemResponse getData(int i);

        int getDataCount();

        List<ComicUpdateListItemResponse> getDataList();

        ComicUpdateListItemResponseOrBuilder getDataOrBuilder(int i);

        List<? extends ComicUpdateListItemResponseOrBuilder> getDataOrBuilderList();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicUpdateListItemResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"ComicId", "Title", "Islong", "Authors", "Types", "Cover", "Status", "LastUpdateChapterName", "LastUpdateChapterId", "LastUpdatetime"});
    }

    private UpdateListResponse() {
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
