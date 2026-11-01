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
import com.google.protobuf.v0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class NovelDetailResponseOuterClass {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.m19224throws(new String[]{"\n\u001bnovel_detail_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel\"\u0095\u0001\n\u0013NovelDetailResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012_\n\u0004Data\u0018\u0003 \u0001(\u000b2Q.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailInfoResponse\"ç\u0003\n\u0017NovelDetailInfoResponse\u0012\u000f\n\u0007NovelId\u0018\u0001 \u0001(\u0005\u0012\f\n\u0004Name\u0018\u0002 \u0001(\t\u0012\f\n\u0004Zone\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006Status\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014LastUpdateVolumeName\u0018\u0005 \u0001(\t\u0012\u001d\n\u0015LastUpdateChapterName\u0018\u0006 \u0001(\t\u0012\u001a\n\u0012LastUpdateVolumeId\u0018\u0007 \u0001(\u0005\u0012\u001b\n\u0013LastUpdateChapterId\u0018\b \u0001(\u0005\u0012\u0016\n\u000eLastUpdateTime\u0018\t \u0001(\u0003\u0012\r\n\u0005Cover\u0018\n \u0001(\t\u0012\u000f\n\u0007HotHits\u0018\u000b \u0001(\u0005\u0012\u0014\n\fIntroduction\u0018\f \u0001(\t\u0012\r\n\u0005Types\u0018\r \u0003(\t\u0012\u000f\n\u0007Authors\u0018\u000e \u0001(\t\u0012\u0013\n\u000bFirstLetter\u0018\u000f \u0001(\t\u0012\u0014\n\fSubscribeNum\u0018\u0010 \u0001(\u0005\u0012\u0017\n\u000fRedisUpdateTime\u0018\u0011 \u0001(\u0003\u0012g\n\u0006Volume\u0018\u0012 \u0003(\u000b2W.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailInfoVolumeResponse\"\u0092\u0001\n\u001dNovelDetailInfoVolumeResponse\u0012\u0010\n\bVolumeId\u0018\u0001 \u0001(\u0005\u0012\u0010\n\bLnovelId\u0018\u0002 \u0001(\u0005\u0012\u0012\n\nVolumeName\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bVolumeOrder\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007Addtime\u0018\u0005 \u0001(\u0003\u0012\u0013\n\u000bSumChapters\u0018\u0006 \u0001(\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable;
    private static final Descriptors.Cif internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable;

    public static final class NovelDetailInfoResponse extends GeneratedMessageV3 implements NovelDetailInfoResponseOrBuilder {
        public static final int AUTHORS_FIELD_NUMBER = 14;
        public static final int COVER_FIELD_NUMBER = 10;
        public static final int FIRSTLETTER_FIELD_NUMBER = 15;
        public static final int HOTHITS_FIELD_NUMBER = 11;
        public static final int INTRODUCTION_FIELD_NUMBER = 12;
        public static final int LASTUPDATECHAPTERID_FIELD_NUMBER = 8;
        public static final int LASTUPDATECHAPTERNAME_FIELD_NUMBER = 6;
        public static final int LASTUPDATETIME_FIELD_NUMBER = 9;
        public static final int LASTUPDATEVOLUMEID_FIELD_NUMBER = 7;
        public static final int LASTUPDATEVOLUMENAME_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int NOVELID_FIELD_NUMBER = 1;
        public static final int REDISUPDATETIME_FIELD_NUMBER = 17;
        public static final int STATUS_FIELD_NUMBER = 4;
        public static final int SUBSCRIBENUM_FIELD_NUMBER = 16;
        public static final int TYPES_FIELD_NUMBER = 13;
        public static final int VOLUME_FIELD_NUMBER = 18;
        public static final int ZONE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object authors_;
        private volatile Object cover_;
        private volatile Object firstLetter_;
        private int hotHits_;
        private volatile Object introduction_;
        private int lastUpdateChapterId_;
        private volatile Object lastUpdateChapterName_;
        private long lastUpdateTime_;
        private int lastUpdateVolumeId_;
        private volatile Object lastUpdateVolumeName_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private int novelId_;
        private long redisUpdateTime_;
        private volatile Object status_;
        private int subscribeNum_;
        private LazyStringList types_;
        private List<NovelDetailInfoVolumeResponse> volume_;
        private volatile Object zone_;
        private static final NovelDetailInfoResponse DEFAULT_INSTANCE = new NovelDetailInfoResponse();
        private static final Parser<NovelDetailInfoResponse> PARSER = new Cdo<NovelDetailInfoResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponse.1
            @Override // com.google.protobuf.Parser
            public NovelDetailInfoResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelDetailInfoResponse(codedInputStream, cimplements);
            }
        };

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelDetailInfoResponseOrBuilder {
            private Object authors_;
            private int bitField0_;
            private Object cover_;
            private Object firstLetter_;
            private int hotHits_;
            private Object introduction_;
            private int lastUpdateChapterId_;
            private Object lastUpdateChapterName_;
            private long lastUpdateTime_;
            private int lastUpdateVolumeId_;
            private Object lastUpdateVolumeName_;
            private Object name_;
            private int novelId_;
            private long redisUpdateTime_;
            private Object status_;
            private int subscribeNum_;
            private LazyStringList types_;
            private v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> volumeBuilder_;
            private List<NovelDetailInfoVolumeResponse> volume_;
            private Object zone_;

            private void ensureTypesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.types_ = new s(this.types_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureVolumeIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.volume_ = new ArrayList(this.volume_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Cif getDescriptor() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor;
            }

            private v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> getVolumeFieldBuilder() {
                if (this.volumeBuilder_ == null) {
                    this.volumeBuilder_ = new v0<>(this.volume_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.volume_ = null;
                }
                return this.volumeBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getVolumeFieldBuilder();
                }
            }

            public Builder addAllTypes(Iterable<String> iterable) {
                ensureTypesIsMutable();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.types_);
                onChanged();
                return this;
            }

            public Builder addAllVolume(Iterable<? extends NovelDetailInfoVolumeResponse> iterable) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    ensureVolumeIsMutable();
                    AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.volume_);
                    onChanged();
                } else {
                    v0Var.m21457do(iterable);
                }
                return this;
            }

            public Builder addTypes(String str) {
                Objects.requireNonNull(str);
                ensureTypesIsMutable();
                this.types_.add((LazyStringList) str);
                onChanged();
                return this;
            }

            public Builder addTypesBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                ensureTypesIsMutable();
                this.types_.add(byteString);
                onChanged();
                return this;
            }

            public Builder addVolume(NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelDetailInfoVolumeResponse);
                    ensureVolumeIsMutable();
                    this.volume_.add(novelDetailInfoVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21469try(novelDetailInfoVolumeResponse);
                }
                return this;
            }

            public NovelDetailInfoVolumeResponse.Builder addVolumeBuilder() {
                return (NovelDetailInfoVolumeResponse.Builder) getVolumeFieldBuilder().m21460for(NovelDetailInfoVolumeResponse.getDefaultInstance());
            }

            public Builder clearAuthors() {
                this.authors_ = NovelDetailInfoResponse.getDefaultInstance().getAuthors();
                onChanged();
                return this;
            }

            public Builder clearCover() {
                this.cover_ = NovelDetailInfoResponse.getDefaultInstance().getCover();
                onChanged();
                return this;
            }

            public Builder clearFirstLetter() {
                this.firstLetter_ = NovelDetailInfoResponse.getDefaultInstance().getFirstLetter();
                onChanged();
                return this;
            }

            public Builder clearHotHits() {
                this.hotHits_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIntroduction() {
                this.introduction_ = NovelDetailInfoResponse.getDefaultInstance().getIntroduction();
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterId() {
                this.lastUpdateChapterId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateChapterName() {
                this.lastUpdateChapterName_ = NovelDetailInfoResponse.getDefaultInstance().getLastUpdateChapterName();
                onChanged();
                return this;
            }

            public Builder clearLastUpdateTime() {
                this.lastUpdateTime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateVolumeId() {
                this.lastUpdateVolumeId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastUpdateVolumeName() {
                this.lastUpdateVolumeName_ = NovelDetailInfoResponse.getDefaultInstance().getLastUpdateVolumeName();
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.name_ = NovelDetailInfoResponse.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearNovelId() {
                this.novelId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRedisUpdateTime() {
                this.redisUpdateTime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.status_ = NovelDetailInfoResponse.getDefaultInstance().getStatus();
                onChanged();
                return this;
            }

            public Builder clearSubscribeNum() {
                this.subscribeNum_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTypes() {
                this.types_ = s.f17207try;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearVolume() {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    this.volume_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder clearZone() {
                this.zone_ = NovelDetailInfoResponse.getDefaultInstance().getZone();
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getAuthors() {
                Object obj = this.authors_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.authors_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getAuthorsBytes() {
                Object obj = this.authors_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authors_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getCover() {
                Object obj = this.cover_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cover_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
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
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getFirstLetter() {
                Object obj = this.firstLetter_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.firstLetter_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getFirstLetterBytes() {
                Object obj = this.firstLetter_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.firstLetter_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getHotHits() {
                return this.hotHits_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getIntroduction() {
                Object obj = this.introduction_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.introduction_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getIntroductionBytes() {
                Object obj = this.introduction_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.introduction_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getLastUpdateChapterId() {
                return this.lastUpdateChapterId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getLastUpdateChapterName() {
                Object obj = this.lastUpdateChapterName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastUpdateChapterName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getLastUpdateChapterNameBytes() {
                Object obj = this.lastUpdateChapterName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public long getLastUpdateTime() {
                return this.lastUpdateTime_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getLastUpdateVolumeId() {
                return this.lastUpdateVolumeId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getLastUpdateVolumeName() {
                Object obj = this.lastUpdateVolumeName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastUpdateVolumeName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getLastUpdateVolumeNameBytes() {
                Object obj = this.lastUpdateVolumeName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastUpdateVolumeName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getNovelId() {
                return this.novelId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public long getRedisUpdateTime() {
                return this.redisUpdateTime_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getStatus() {
                Object obj = this.status_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.status_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getStatusBytes() {
                Object obj = this.status_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.status_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getSubscribeNum() {
                return this.subscribeNum_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getTypes(int i) {
                return this.types_.get(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getTypesBytes(int i) {
                return this.types_.getByteString(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getTypesCount() {
                return this.types_.size();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public NovelDetailInfoVolumeResponse getVolume(int i) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                return v0Var == null ? this.volume_.get(i) : (NovelDetailInfoVolumeResponse) v0Var.m21459final(i);
            }

            public NovelDetailInfoVolumeResponse.Builder getVolumeBuilder(int i) {
                return (NovelDetailInfoVolumeResponse.Builder) getVolumeFieldBuilder().m21454catch(i);
            }

            public List<NovelDetailInfoVolumeResponse.Builder> getVolumeBuilderList() {
                return getVolumeFieldBuilder().m21455class();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public int getVolumeCount() {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                return v0Var == null ? this.volume_.size() : v0Var.m21456const();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public List<NovelDetailInfoVolumeResponse> getVolumeList() {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                return v0Var == null ? Collections.unmodifiableList(this.volume_) : v0Var.m21468throw();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public NovelDetailInfoVolumeResponseOrBuilder getVolumeOrBuilder(int i) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                return v0Var == null ? this.volume_.get(i) : (NovelDetailInfoVolumeResponseOrBuilder) v0Var.m21470while(i);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public List<? extends NovelDetailInfoVolumeResponseOrBuilder> getVolumeOrBuilderList() {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.volume_);
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public String getZone() {
                Object obj = this.zone_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.zone_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ByteString getZoneBytes() {
                Object obj = this.zone_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.zone_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable.m19575new(NovelDetailInfoResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeVolume(int i) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    ensureVolumeIsMutable();
                    this.volume_.remove(i);
                    onChanged();
                } else {
                    v0Var.m21466static(i);
                }
                return this;
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

            public Builder setHotHits(int i) {
                this.hotHits_ = i;
                onChanged();
                return this;
            }

            public Builder setIntroduction(String str) {
                Objects.requireNonNull(str);
                this.introduction_ = str;
                onChanged();
                return this;
            }

            public Builder setIntroductionBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.introduction_ = byteString;
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

            public Builder setLastUpdateTime(long j) {
                this.lastUpdateTime_ = j;
                onChanged();
                return this;
            }

            public Builder setLastUpdateVolumeId(int i) {
                this.lastUpdateVolumeId_ = i;
                onChanged();
                return this;
            }

            public Builder setLastUpdateVolumeName(String str) {
                Objects.requireNonNull(str);
                this.lastUpdateVolumeName_ = str;
                onChanged();
                return this;
            }

            public Builder setLastUpdateVolumeNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.lastUpdateVolumeName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setName(String str) {
                Objects.requireNonNull(str);
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setNovelId(int i) {
                this.novelId_ = i;
                onChanged();
                return this;
            }

            public Builder setRedisUpdateTime(long j) {
                this.redisUpdateTime_ = j;
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

            public Builder setSubscribeNum(int i) {
                this.subscribeNum_ = i;
                onChanged();
                return this;
            }

            public Builder setTypes(int i, String str) {
                Objects.requireNonNull(str);
                ensureTypesIsMutable();
                this.types_.set(i, (int) str);
                onChanged();
                return this;
            }

            public Builder setVolume(int i, NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelDetailInfoVolumeResponse);
                    ensureVolumeIsMutable();
                    this.volume_.set(i, novelDetailInfoVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21467switch(i, novelDetailInfoVolumeResponse);
                }
                return this;
            }

            public Builder setZone(String str) {
                Objects.requireNonNull(str);
                this.zone_ = str;
                onChanged();
                return this;
            }

            public Builder setZoneBytes(ByteString byteString) throws IllegalArgumentException {
                Objects.requireNonNull(byteString);
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.zone_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
            public ProtocolStringList getTypesList() {
                return this.types_.getUnmodifiableView();
            }

            private Builder() {
                this.name_ = "";
                this.zone_ = "";
                this.status_ = "";
                this.lastUpdateVolumeName_ = "";
                this.lastUpdateChapterName_ = "";
                this.cover_ = "";
                this.introduction_ = "";
                this.types_ = s.f17207try;
                this.authors_ = "";
                this.firstLetter_ = "";
                this.volume_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelDetailInfoResponse build() {
                NovelDetailInfoResponse novelDetailInfoResponseBuildPartial = buildPartial();
                if (novelDetailInfoResponseBuildPartial.isInitialized()) {
                    return novelDetailInfoResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelDetailInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelDetailInfoResponse buildPartial() {
                NovelDetailInfoResponse novelDetailInfoResponse = new NovelDetailInfoResponse(this);
                novelDetailInfoResponse.novelId_ = this.novelId_;
                novelDetailInfoResponse.name_ = this.name_;
                novelDetailInfoResponse.zone_ = this.zone_;
                novelDetailInfoResponse.status_ = this.status_;
                novelDetailInfoResponse.lastUpdateVolumeName_ = this.lastUpdateVolumeName_;
                novelDetailInfoResponse.lastUpdateChapterName_ = this.lastUpdateChapterName_;
                novelDetailInfoResponse.lastUpdateVolumeId_ = this.lastUpdateVolumeId_;
                novelDetailInfoResponse.lastUpdateChapterId_ = this.lastUpdateChapterId_;
                novelDetailInfoResponse.lastUpdateTime_ = this.lastUpdateTime_;
                novelDetailInfoResponse.cover_ = this.cover_;
                novelDetailInfoResponse.hotHits_ = this.hotHits_;
                novelDetailInfoResponse.introduction_ = this.introduction_;
                if ((this.bitField0_ & 1) != 0) {
                    this.types_ = this.types_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                novelDetailInfoResponse.types_ = this.types_;
                novelDetailInfoResponse.authors_ = this.authors_;
                novelDetailInfoResponse.firstLetter_ = this.firstLetter_;
                novelDetailInfoResponse.subscribeNum_ = this.subscribeNum_;
                novelDetailInfoResponse.redisUpdateTime_ = this.redisUpdateTime_;
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var != null) {
                    novelDetailInfoResponse.volume_ = v0Var.m21453case();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.volume_ = Collections.unmodifiableList(this.volume_);
                        this.bitField0_ &= -3;
                    }
                    novelDetailInfoResponse.volume_ = this.volume_;
                }
                onBuilt();
                return novelDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelDetailInfoResponse getDefaultInstanceForType() {
                return NovelDetailInfoResponse.getDefaultInstance();
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

            public NovelDetailInfoVolumeResponse.Builder addVolumeBuilder(int i) {
                return (NovelDetailInfoVolumeResponse.Builder) getVolumeFieldBuilder().m21462if(i, NovelDetailInfoVolumeResponse.getDefaultInstance());
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
                this.novelId_ = 0;
                this.name_ = "";
                this.zone_ = "";
                this.status_ = "";
                this.lastUpdateVolumeName_ = "";
                this.lastUpdateChapterName_ = "";
                this.lastUpdateVolumeId_ = 0;
                this.lastUpdateChapterId_ = 0;
                this.lastUpdateTime_ = 0L;
                this.cover_ = "";
                this.hotHits_ = 0;
                this.introduction_ = "";
                this.types_ = s.f17207try;
                this.bitField0_ &= -2;
                this.authors_ = "";
                this.firstLetter_ = "";
                this.subscribeNum_ = 0;
                this.redisUpdateTime_ = 0L;
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    this.volume_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    v0Var.m21458else();
                }
                return this;
            }

            public Builder addVolume(int i, NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    Objects.requireNonNull(novelDetailInfoVolumeResponse);
                    ensureVolumeIsMutable();
                    this.volume_.add(i, novelDetailInfoVolumeResponse);
                    onChanged();
                } else {
                    v0Var.m21464new(i, novelDetailInfoVolumeResponse);
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
                if (message instanceof NovelDetailInfoResponse) {
                    return mergeFrom((NovelDetailInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setVolume(int i, NovelDetailInfoVolumeResponse.Builder builder) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    ensureVolumeIsMutable();
                    this.volume_.set(i, builder.build());
                    onChanged();
                } else {
                    v0Var.m21467switch(i, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(NovelDetailInfoResponse novelDetailInfoResponse) {
                if (novelDetailInfoResponse == NovelDetailInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelDetailInfoResponse.getNovelId() != 0) {
                    setNovelId(novelDetailInfoResponse.getNovelId());
                }
                if (!novelDetailInfoResponse.getName().isEmpty()) {
                    this.name_ = novelDetailInfoResponse.name_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.getZone().isEmpty()) {
                    this.zone_ = novelDetailInfoResponse.zone_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.getStatus().isEmpty()) {
                    this.status_ = novelDetailInfoResponse.status_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.getLastUpdateVolumeName().isEmpty()) {
                    this.lastUpdateVolumeName_ = novelDetailInfoResponse.lastUpdateVolumeName_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.getLastUpdateChapterName().isEmpty()) {
                    this.lastUpdateChapterName_ = novelDetailInfoResponse.lastUpdateChapterName_;
                    onChanged();
                }
                if (novelDetailInfoResponse.getLastUpdateVolumeId() != 0) {
                    setLastUpdateVolumeId(novelDetailInfoResponse.getLastUpdateVolumeId());
                }
                if (novelDetailInfoResponse.getLastUpdateChapterId() != 0) {
                    setLastUpdateChapterId(novelDetailInfoResponse.getLastUpdateChapterId());
                }
                if (novelDetailInfoResponse.getLastUpdateTime() != 0) {
                    setLastUpdateTime(novelDetailInfoResponse.getLastUpdateTime());
                }
                if (!novelDetailInfoResponse.getCover().isEmpty()) {
                    this.cover_ = novelDetailInfoResponse.cover_;
                    onChanged();
                }
                if (novelDetailInfoResponse.getHotHits() != 0) {
                    setHotHits(novelDetailInfoResponse.getHotHits());
                }
                if (!novelDetailInfoResponse.getIntroduction().isEmpty()) {
                    this.introduction_ = novelDetailInfoResponse.introduction_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.types_.isEmpty()) {
                    if (this.types_.isEmpty()) {
                        this.types_ = novelDetailInfoResponse.types_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureTypesIsMutable();
                        this.types_.addAll(novelDetailInfoResponse.types_);
                    }
                    onChanged();
                }
                if (!novelDetailInfoResponse.getAuthors().isEmpty()) {
                    this.authors_ = novelDetailInfoResponse.authors_;
                    onChanged();
                }
                if (!novelDetailInfoResponse.getFirstLetter().isEmpty()) {
                    this.firstLetter_ = novelDetailInfoResponse.firstLetter_;
                    onChanged();
                }
                if (novelDetailInfoResponse.getSubscribeNum() != 0) {
                    setSubscribeNum(novelDetailInfoResponse.getSubscribeNum());
                }
                if (novelDetailInfoResponse.getRedisUpdateTime() != 0) {
                    setRedisUpdateTime(novelDetailInfoResponse.getRedisUpdateTime());
                }
                if (this.volumeBuilder_ == null) {
                    if (!novelDetailInfoResponse.volume_.isEmpty()) {
                        if (this.volume_.isEmpty()) {
                            this.volume_ = novelDetailInfoResponse.volume_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureVolumeIsMutable();
                            this.volume_.addAll(novelDetailInfoResponse.volume_);
                        }
                        onChanged();
                    }
                } else if (!novelDetailInfoResponse.volume_.isEmpty()) {
                    if (!this.volumeBuilder_.m21465public()) {
                        this.volumeBuilder_.m21457do(novelDetailInfoResponse.volume_);
                    } else {
                        this.volumeBuilder_.m21461goto();
                        this.volumeBuilder_ = null;
                        this.volume_ = novelDetailInfoResponse.volume_;
                        this.bitField0_ &= -3;
                        this.volumeBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getVolumeFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(novelDetailInfoResponse.unknownFields);
                onChanged();
                return this;
            }

            public Builder addVolume(NovelDetailInfoVolumeResponse.Builder builder) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    ensureVolumeIsMutable();
                    this.volume_.add(builder.build());
                    onChanged();
                } else {
                    v0Var.m21469try(builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.zone_ = "";
                this.status_ = "";
                this.lastUpdateVolumeName_ = "";
                this.lastUpdateChapterName_ = "";
                this.cover_ = "";
                this.introduction_ = "";
                this.types_ = s.f17207try;
                this.authors_ = "";
                this.firstLetter_ = "";
                this.volume_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addVolume(int i, NovelDetailInfoVolumeResponse.Builder builder) {
                v0<NovelDetailInfoVolumeResponse, NovelDetailInfoVolumeResponse.Builder, NovelDetailInfoVolumeResponseOrBuilder> v0Var = this.volumeBuilder_;
                if (v0Var == null) {
                    ensureVolumeIsMutable();
                    this.volume_.add(i, builder.build());
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
                NovelDetailInfoResponse novelDetailInfoResponse = null;
                try {
                    try {
                        NovelDetailInfoResponse novelDetailInfoResponse2 = (NovelDetailInfoResponse) NovelDetailInfoResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelDetailInfoResponse2 != null) {
                            mergeFrom(novelDetailInfoResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelDetailInfoResponse novelDetailInfoResponse3 = (NovelDetailInfoResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelDetailInfoResponse = novelDetailInfoResponse3;
                            if (novelDetailInfoResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelDetailInfoResponse != null) {
                        mergeFrom(novelDetailInfoResponse);
                    }
                    throw th;
                }
            }
        }

        public static NovelDetailInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelDetailInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelDetailInfoResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelDetailInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelDetailInfoResponse)) {
                return super.equals(obj);
            }
            NovelDetailInfoResponse novelDetailInfoResponse = (NovelDetailInfoResponse) obj;
            return getNovelId() == novelDetailInfoResponse.getNovelId() && getName().equals(novelDetailInfoResponse.getName()) && getZone().equals(novelDetailInfoResponse.getZone()) && getStatus().equals(novelDetailInfoResponse.getStatus()) && getLastUpdateVolumeName().equals(novelDetailInfoResponse.getLastUpdateVolumeName()) && getLastUpdateChapterName().equals(novelDetailInfoResponse.getLastUpdateChapterName()) && getLastUpdateVolumeId() == novelDetailInfoResponse.getLastUpdateVolumeId() && getLastUpdateChapterId() == novelDetailInfoResponse.getLastUpdateChapterId() && getLastUpdateTime() == novelDetailInfoResponse.getLastUpdateTime() && getCover().equals(novelDetailInfoResponse.getCover()) && getHotHits() == novelDetailInfoResponse.getHotHits() && getIntroduction().equals(novelDetailInfoResponse.getIntroduction()) && getTypesList().equals(novelDetailInfoResponse.getTypesList()) && getAuthors().equals(novelDetailInfoResponse.getAuthors()) && getFirstLetter().equals(novelDetailInfoResponse.getFirstLetter()) && getSubscribeNum() == novelDetailInfoResponse.getSubscribeNum() && getRedisUpdateTime() == novelDetailInfoResponse.getRedisUpdateTime() && getVolumeList().equals(novelDetailInfoResponse.getVolumeList()) && this.unknownFields.equals(novelDetailInfoResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getAuthors() {
            Object obj = this.authors_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.authors_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getAuthorsBytes() {
            Object obj = this.authors_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authors_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getCover() {
            Object obj = this.cover_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cover_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getCoverBytes() {
            Object obj = this.cover_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cover_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getFirstLetter() {
            Object obj = this.firstLetter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.firstLetter_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getFirstLetterBytes() {
            Object obj = this.firstLetter_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.firstLetter_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getHotHits() {
            return this.hotHits_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getIntroduction() {
            Object obj = this.introduction_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.introduction_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getIntroductionBytes() {
            Object obj = this.introduction_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.introduction_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getLastUpdateChapterId() {
            return this.lastUpdateChapterId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getLastUpdateChapterName() {
            Object obj = this.lastUpdateChapterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastUpdateChapterName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getLastUpdateChapterNameBytes() {
            Object obj = this.lastUpdateChapterName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastUpdateChapterName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public long getLastUpdateTime() {
            return this.lastUpdateTime_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getLastUpdateVolumeId() {
            return this.lastUpdateVolumeId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getLastUpdateVolumeName() {
            Object obj = this.lastUpdateVolumeName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastUpdateVolumeName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getLastUpdateVolumeNameBytes() {
            Object obj = this.lastUpdateVolumeName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastUpdateVolumeName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getNovelId() {
            return this.novelId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelDetailInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public long getRedisUpdateTime() {
            return this.redisUpdateTime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.novelId_;
            int iM20874abstract = i2 != 0 ? Cnative.m20874abstract(1, i2) + 0 : 0;
            if (!getNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            if (!getZoneBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(3, this.zone_);
            }
            if (!getStatusBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(4, this.status_);
            }
            if (!getLastUpdateVolumeNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(5, this.lastUpdateVolumeName_);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(6, this.lastUpdateChapterName_);
            }
            int i3 = this.lastUpdateVolumeId_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(7, i3);
            }
            int i4 = this.lastUpdateChapterId_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(8, i4);
            }
            long j = this.lastUpdateTime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(9, j);
            }
            if (!getCoverBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(10, this.cover_);
            }
            int i5 = this.hotHits_;
            if (i5 != 0) {
                iM20874abstract += Cnative.m20874abstract(11, i5);
            }
            if (!getIntroductionBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(12, this.introduction_);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i6 = 0; i6 < this.types_.size(); i6++) {
                iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.types_.getRaw(i6));
            }
            int size = iM20874abstract + iComputeStringSizeNoTag + (getTypesList().size() * 1);
            if (!getAuthorsBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(14, this.authors_);
            }
            if (!getFirstLetterBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(15, this.firstLetter_);
            }
            int i7 = this.subscribeNum_;
            if (i7 != 0) {
                size += Cnative.m20874abstract(16, i7);
            }
            long j2 = this.redisUpdateTime_;
            if (j2 != 0) {
                size += Cnative.m20897strictfp(17, j2);
            }
            for (int i8 = 0; i8 < this.volume_.size(); i8++) {
                size += Cnative.m20900synchronized(18, this.volume_.get(i8));
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getStatus() {
            Object obj = this.status_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.status_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getStatusBytes() {
            Object obj = this.status_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.status_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getSubscribeNum() {
            return this.subscribeNum_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getTypes(int i) {
            return this.types_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getTypesBytes(int i) {
            return this.types_.getByteString(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getTypesCount() {
            return this.types_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public NovelDetailInfoVolumeResponse getVolume(int i) {
            return this.volume_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public int getVolumeCount() {
            return this.volume_.size();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public List<NovelDetailInfoVolumeResponse> getVolumeList() {
            return this.volume_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public NovelDetailInfoVolumeResponseOrBuilder getVolumeOrBuilder(int i) {
            return this.volume_.get(i);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public List<? extends NovelDetailInfoVolumeResponseOrBuilder> getVolumeOrBuilderList() {
            return this.volume_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public String getZone() {
            Object obj = this.zone_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.zone_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ByteString getZoneBytes() {
            Object obj = this.zone_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.zone_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getNovelId()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getZone().hashCode()) * 37) + 4) * 53) + getStatus().hashCode()) * 37) + 5) * 53) + getLastUpdateVolumeName().hashCode()) * 37) + 6) * 53) + getLastUpdateChapterName().hashCode()) * 37) + 7) * 53) + getLastUpdateVolumeId()) * 37) + 8) * 53) + getLastUpdateChapterId()) * 37) + 9) * 53) + Internal.m19622native(getLastUpdateTime())) * 37) + 10) * 53) + getCover().hashCode()) * 37) + 11) * 53) + getHotHits()) * 37) + 12) * 53) + getIntroduction().hashCode();
            if (getTypesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getTypesList().hashCode();
            }
            int iHashCode2 = (((((((((((((((iHashCode * 37) + 14) * 53) + getAuthors().hashCode()) * 37) + 15) * 53) + getFirstLetter().hashCode()) * 37) + 16) * 53) + getSubscribeNum()) * 37) + 17) * 53) + Internal.m19622native(getRedisUpdateTime());
            if (getVolumeCount() > 0) {
                iHashCode2 = (((iHashCode2 * 37) + 18) * 53) + getVolumeList().hashCode();
            }
            int iHashCode3 = (iHashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable.m19575new(NovelDetailInfoResponse.class, Builder.class);
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
            return new NovelDetailInfoResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.novelId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 2, this.name_);
            }
            if (!getZoneBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 3, this.zone_);
            }
            if (!getStatusBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 4, this.status_);
            }
            if (!getLastUpdateVolumeNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 5, this.lastUpdateVolumeName_);
            }
            if (!getLastUpdateChapterNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 6, this.lastUpdateChapterName_);
            }
            int i2 = this.lastUpdateVolumeId_;
            if (i2 != 0) {
                cnative.writeInt32(7, i2);
            }
            int i3 = this.lastUpdateChapterId_;
            if (i3 != 0) {
                cnative.writeInt32(8, i3);
            }
            long j = this.lastUpdateTime_;
            if (j != 0) {
                cnative.writeInt64(9, j);
            }
            if (!getCoverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 10, this.cover_);
            }
            int i4 = this.hotHits_;
            if (i4 != 0) {
                cnative.writeInt32(11, i4);
            }
            if (!getIntroductionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 12, this.introduction_);
            }
            for (int i5 = 0; i5 < this.types_.size(); i5++) {
                GeneratedMessageV3.writeString(cnative, 13, this.types_.getRaw(i5));
            }
            if (!getAuthorsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 14, this.authors_);
            }
            if (!getFirstLetterBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 15, this.firstLetter_);
            }
            int i6 = this.subscribeNum_;
            if (i6 != 0) {
                cnative.writeInt32(16, i6);
            }
            long j2 = this.redisUpdateTime_;
            if (j2 != 0) {
                cnative.writeInt64(17, j2);
            }
            for (int i7 = 0; i7 < this.volume_.size(); i7++) {
                cnative.f0(18, this.volume_.get(i7));
            }
            this.unknownFields.writeTo(cnative);
        }

        public static Builder newBuilder(NovelDetailInfoResponse novelDetailInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelDetailInfoResponse);
        }

        public static NovelDetailInfoResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoResponseOrBuilder
        public ProtocolStringList getTypesList() {
            return this.types_;
        }

        private NovelDetailInfoResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelDetailInfoResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailInfoResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelDetailInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelDetailInfoResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelDetailInfoResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.zone_ = "";
            this.status_ = "";
            this.lastUpdateVolumeName_ = "";
            this.lastUpdateChapterName_ = "";
            this.cover_ = "";
            this.introduction_ = "";
            this.types_ = s.f17207try;
            this.authors_ = "";
            this.firstLetter_ = "";
            this.volume_ = Collections.emptyList();
        }

        public static NovelDetailInfoResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelDetailInfoResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelDetailInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static NovelDetailInfoResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelDetailInfoResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }

        private NovelDetailInfoResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.novelId_ = codedInputStream.mo18439strictfp();
                            case 18:
                                this.name_ = codedInputStream.k();
                            case 26:
                                this.zone_ = codedInputStream.k();
                            case 34:
                                this.status_ = codedInputStream.k();
                            case 42:
                                this.lastUpdateVolumeName_ = codedInputStream.k();
                            case 50:
                                this.lastUpdateChapterName_ = codedInputStream.k();
                            case 56:
                                this.lastUpdateVolumeId_ = codedInputStream.mo18439strictfp();
                            case 64:
                                this.lastUpdateChapterId_ = codedInputStream.mo18439strictfp();
                            case 72:
                                this.lastUpdateTime_ = codedInputStream.mo18446volatile();
                            case 82:
                                this.cover_ = codedInputStream.k();
                            case 88:
                                this.hotHits_ = codedInputStream.mo18439strictfp();
                            case 98:
                                this.introduction_ = codedInputStream.k();
                            case 106:
                                String strK = codedInputStream.k();
                                if ((i & 1) == 0) {
                                    this.types_ = new s();
                                    i |= 1;
                                }
                                this.types_.add((LazyStringList) strK);
                            case 114:
                                this.authors_ = codedInputStream.k();
                            case 122:
                                this.firstLetter_ = codedInputStream.k();
                            case 128:
                                this.subscribeNum_ = codedInputStream.mo18439strictfp();
                            case 136:
                                this.redisUpdateTime_ = codedInputStream.mo18446volatile();
                            case 146:
                                if ((i & 2) == 0) {
                                    this.volume_ = new ArrayList();
                                    i |= 2;
                                }
                                this.volume_.add((NovelDetailInfoVolumeResponse) codedInputStream.mo18430interface(NovelDetailInfoVolumeResponse.parser(), cimplements));
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
                        this.types_ = this.types_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.volume_ = Collections.unmodifiableList(this.volume_);
                    }
                    this.unknownFields = cifM21191this.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    public interface NovelDetailInfoResponseOrBuilder extends MessageOrBuilder {
        String getAuthors();

        ByteString getAuthorsBytes();

        String getCover();

        ByteString getCoverBytes();

        String getFirstLetter();

        ByteString getFirstLetterBytes();

        int getHotHits();

        String getIntroduction();

        ByteString getIntroductionBytes();

        int getLastUpdateChapterId();

        String getLastUpdateChapterName();

        ByteString getLastUpdateChapterNameBytes();

        long getLastUpdateTime();

        int getLastUpdateVolumeId();

        String getLastUpdateVolumeName();

        ByteString getLastUpdateVolumeNameBytes();

        String getName();

        ByteString getNameBytes();

        int getNovelId();

        long getRedisUpdateTime();

        String getStatus();

        ByteString getStatusBytes();

        int getSubscribeNum();

        String getTypes(int i);

        ByteString getTypesBytes(int i);

        int getTypesCount();

        List<String> getTypesList();

        NovelDetailInfoVolumeResponse getVolume(int i);

        int getVolumeCount();

        List<NovelDetailInfoVolumeResponse> getVolumeList();

        NovelDetailInfoVolumeResponseOrBuilder getVolumeOrBuilder(int i);

        List<? extends NovelDetailInfoVolumeResponseOrBuilder> getVolumeOrBuilderList();

        String getZone();

        ByteString getZoneBytes();
    }

    public static final class NovelDetailInfoVolumeResponse extends GeneratedMessageV3 implements NovelDetailInfoVolumeResponseOrBuilder {
        public static final int ADDTIME_FIELD_NUMBER = 5;
        public static final int LNOVELID_FIELD_NUMBER = 2;
        public static final int SUMCHAPTERS_FIELD_NUMBER = 6;
        public static final int VOLUMEID_FIELD_NUMBER = 1;
        public static final int VOLUMENAME_FIELD_NUMBER = 3;
        public static final int VOLUMEORDER_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long addtime_;
        private int lnovelId_;
        private byte memoizedIsInitialized;
        private int sumChapters_;
        private int volumeId_;
        private volatile Object volumeName_;
        private int volumeOrder_;
        private static final NovelDetailInfoVolumeResponse DEFAULT_INSTANCE = new NovelDetailInfoVolumeResponse();
        private static final Parser<NovelDetailInfoVolumeResponse> PARSER = new Cdo<NovelDetailInfoVolumeResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponse.1
            @Override // com.google.protobuf.Parser
            public NovelDetailInfoVolumeResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelDetailInfoVolumeResponse(codedInputStream, cimplements);
            }
        };

        public static NovelDetailInfoVolumeResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelDetailInfoVolumeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelDetailInfoVolumeResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelDetailInfoVolumeResponse)) {
                return super.equals(obj);
            }
            NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse = (NovelDetailInfoVolumeResponse) obj;
            return getVolumeId() == novelDetailInfoVolumeResponse.getVolumeId() && getLnovelId() == novelDetailInfoVolumeResponse.getLnovelId() && getVolumeName().equals(novelDetailInfoVolumeResponse.getVolumeName()) && getVolumeOrder() == novelDetailInfoVolumeResponse.getVolumeOrder() && getAddtime() == novelDetailInfoVolumeResponse.getAddtime() && getSumChapters() == novelDetailInfoVolumeResponse.getSumChapters() && this.unknownFields.equals(novelDetailInfoVolumeResponse.unknownFields);
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public long getAddtime() {
            return this.addtime_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public int getLnovelId() {
            return this.lnovelId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelDetailInfoVolumeResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.volumeId_;
            int iM20874abstract = i2 != 0 ? 0 + Cnative.m20874abstract(1, i2) : 0;
            int i3 = this.lnovelId_;
            if (i3 != 0) {
                iM20874abstract += Cnative.m20874abstract(2, i3);
            }
            if (!getVolumeNameBytes().isEmpty()) {
                iM20874abstract += GeneratedMessageV3.computeStringSize(3, this.volumeName_);
            }
            int i4 = this.volumeOrder_;
            if (i4 != 0) {
                iM20874abstract += Cnative.m20874abstract(4, i4);
            }
            long j = this.addtime_;
            if (j != 0) {
                iM20874abstract += Cnative.m20897strictfp(5, j);
            }
            int i5 = this.sumChapters_;
            if (i5 != 0) {
                iM20874abstract += Cnative.m20874abstract(6, i5);
            }
            int serializedSize = iM20874abstract + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public int getSumChapters() {
            return this.sumChapters_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public int getVolumeId() {
            return this.volumeId_;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public String getVolumeName() {
            Object obj = this.volumeName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.volumeName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public ByteString getVolumeNameBytes() {
            Object obj = this.volumeName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.volumeName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
        public int getVolumeOrder() {
            return this.volumeOrder_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVolumeId()) * 37) + 2) * 53) + getLnovelId()) * 37) + 3) * 53) + getVolumeName().hashCode()) * 37) + 4) * 53) + getVolumeOrder()) * 37) + 5) * 53) + Internal.m19622native(getAddtime())) * 37) + 6) * 53) + getSumChapters()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable.m19575new(NovelDetailInfoVolumeResponse.class, Builder.class);
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
            return new NovelDetailInfoVolumeResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(Cnative cnative) throws IOException {
            int i = this.volumeId_;
            if (i != 0) {
                cnative.writeInt32(1, i);
            }
            int i2 = this.lnovelId_;
            if (i2 != 0) {
                cnative.writeInt32(2, i2);
            }
            if (!getVolumeNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(cnative, 3, this.volumeName_);
            }
            int i3 = this.volumeOrder_;
            if (i3 != 0) {
                cnative.writeInt32(4, i3);
            }
            long j = this.addtime_;
            if (j != 0) {
                cnative.writeInt64(5, j);
            }
            int i4 = this.sumChapters_;
            if (i4 != 0) {
                cnative.writeInt32(6, i4);
            }
            this.unknownFields.writeTo(cnative);
        }

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelDetailInfoVolumeResponseOrBuilder {
            private long addtime_;
            private int lnovelId_;
            private int sumChapters_;
            private int volumeId_;
            private Object volumeName_;
            private int volumeOrder_;

            public static final Descriptors.Cif getDescriptor() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAddtime() {
                this.addtime_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearLnovelId() {
                this.lnovelId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSumChapters() {
                this.sumChapters_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVolumeId() {
                this.volumeId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVolumeName() {
                this.volumeName_ = NovelDetailInfoVolumeResponse.getDefaultInstance().getVolumeName();
                onChanged();
                return this;
            }

            public Builder clearVolumeOrder() {
                this.volumeOrder_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public long getAddtime() {
                return this.addtime_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public int getLnovelId() {
                return this.lnovelId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public int getSumChapters() {
                return this.sumChapters_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public int getVolumeId() {
                return this.volumeId_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public String getVolumeName() {
                Object obj = this.volumeName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.volumeName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public ByteString getVolumeNameBytes() {
                Object obj = this.volumeName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.volumeName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailInfoVolumeResponseOrBuilder
            public int getVolumeOrder() {
                return this.volumeOrder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable.m19575new(NovelDetailInfoVolumeResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAddtime(long j) {
                this.addtime_ = j;
                onChanged();
                return this;
            }

            public Builder setLnovelId(int i) {
                this.lnovelId_ = i;
                onChanged();
                return this;
            }

            public Builder setSumChapters(int i) {
                this.sumChapters_ = i;
                onChanged();
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
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.Celse celse, Object obj) {
                return (Builder) super.addRepeatedField(celse, obj);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelDetailInfoVolumeResponse build() {
                NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponseBuildPartial = buildPartial();
                if (novelDetailInfoVolumeResponseBuildPartial.isInitialized()) {
                    return novelDetailInfoVolumeResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelDetailInfoVolumeResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelDetailInfoVolumeResponse buildPartial() {
                NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse = new NovelDetailInfoVolumeResponse(this);
                novelDetailInfoVolumeResponse.volumeId_ = this.volumeId_;
                novelDetailInfoVolumeResponse.lnovelId_ = this.lnovelId_;
                novelDetailInfoVolumeResponse.volumeName_ = this.volumeName_;
                novelDetailInfoVolumeResponse.volumeOrder_ = this.volumeOrder_;
                novelDetailInfoVolumeResponse.addtime_ = this.addtime_;
                novelDetailInfoVolumeResponse.sumChapters_ = this.sumChapters_;
                onBuilt();
                return novelDetailInfoVolumeResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelDetailInfoVolumeResponse getDefaultInstanceForType() {
                return NovelDetailInfoVolumeResponse.getDefaultInstance();
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
                this.volumeId_ = 0;
                this.lnovelId_ = 0;
                this.volumeName_ = "";
                this.volumeOrder_ = 0;
                this.addtime_ = 0L;
                this.sumChapters_ = 0;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.volumeName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
            /* renamed from: clone */
            public Builder mo18392clone() {
                return (Builder) super.mo18392clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof NovelDetailInfoVolumeResponse) {
                    return mergeFrom((NovelDetailInfoVolumeResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse) {
                if (novelDetailInfoVolumeResponse == NovelDetailInfoVolumeResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelDetailInfoVolumeResponse.getVolumeId() != 0) {
                    setVolumeId(novelDetailInfoVolumeResponse.getVolumeId());
                }
                if (novelDetailInfoVolumeResponse.getLnovelId() != 0) {
                    setLnovelId(novelDetailInfoVolumeResponse.getLnovelId());
                }
                if (!novelDetailInfoVolumeResponse.getVolumeName().isEmpty()) {
                    this.volumeName_ = novelDetailInfoVolumeResponse.volumeName_;
                    onChanged();
                }
                if (novelDetailInfoVolumeResponse.getVolumeOrder() != 0) {
                    setVolumeOrder(novelDetailInfoVolumeResponse.getVolumeOrder());
                }
                if (novelDetailInfoVolumeResponse.getAddtime() != 0) {
                    setAddtime(novelDetailInfoVolumeResponse.getAddtime());
                }
                if (novelDetailInfoVolumeResponse.getSumChapters() != 0) {
                    setSumChapters(novelDetailInfoVolumeResponse.getSumChapters());
                }
                mergeUnknownFields(novelDetailInfoVolumeResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse = null;
                try {
                    try {
                        NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse2 = (NovelDetailInfoVolumeResponse) NovelDetailInfoVolumeResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelDetailInfoVolumeResponse2 != null) {
                            mergeFrom(novelDetailInfoVolumeResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse3 = (NovelDetailInfoVolumeResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelDetailInfoVolumeResponse = novelDetailInfoVolumeResponse3;
                            if (novelDetailInfoVolumeResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelDetailInfoVolumeResponse != null) {
                        mergeFrom(novelDetailInfoVolumeResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NovelDetailInfoVolumeResponse novelDetailInfoVolumeResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelDetailInfoVolumeResponse);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NovelDetailInfoVolumeResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelDetailInfoVolumeResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelDetailInfoVolumeResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelDetailInfoVolumeResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.volumeName_ = "";
        }

        public static NovelDetailInfoVolumeResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NovelDetailInfoVolumeResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.volumeId_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 16) {
                                this.lnovelId_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 26) {
                                this.volumeName_ = codedInputStream.k();
                            } else if (iL == 32) {
                                this.volumeOrder_ = codedInputStream.mo18439strictfp();
                            } else if (iL == 40) {
                                this.addtime_ = codedInputStream.mo18446volatile();
                            } else if (iL != 48) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.sumChapters_ = codedInputStream.mo18439strictfp();
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

        public static NovelDetailInfoVolumeResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelDetailInfoVolumeResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailInfoVolumeResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NovelDetailInfoVolumeResponseOrBuilder extends MessageOrBuilder {
        long getAddtime();

        int getLnovelId();

        int getSumChapters();

        int getVolumeId();

        String getVolumeName();

        ByteString getVolumeNameBytes();

        int getVolumeOrder();
    }

    public static final class NovelDetailResponse extends GeneratedMessageV3 implements NovelDetailResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int ERRMSG_FIELD_NUMBER = 2;
        public static final int ERRNO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private NovelDetailInfoResponse data_;
        private volatile Object errmsg_;
        private int errno_;
        private byte memoizedIsInitialized;
        private static final NovelDetailResponse DEFAULT_INSTANCE = new NovelDetailResponse();
        private static final Parser<NovelDetailResponse> PARSER = new Cdo<NovelDetailResponse>() { // from class: com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponse.1
            @Override // com.google.protobuf.Parser
            public NovelDetailResponse parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new NovelDetailResponse(codedInputStream, cimplements);
            }
        };

        public static NovelDetailResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Cif getDescriptor() {
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NovelDetailResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NovelDetailResponse parseFrom(ByteBuffer byteBuffer) throws n {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<NovelDetailResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof NovelDetailResponse)) {
                return super.equals(obj);
            }
            NovelDetailResponse novelDetailResponse = (NovelDetailResponse) obj;
            if (getErrno() == novelDetailResponse.getErrno() && getErrmsg().equals(novelDetailResponse.getErrmsg()) && hasData() == novelDetailResponse.hasData()) {
                return (!hasData() || getData().equals(novelDetailResponse.getData())) && this.unknownFields.equals(novelDetailResponse.unknownFields);
            }
            return false;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
        public NovelDetailInfoResponse getData() {
            NovelDetailInfoResponse novelDetailInfoResponse = this.data_;
            return novelDetailInfoResponse == null ? NovelDetailInfoResponse.getDefaultInstance() : novelDetailInfoResponse;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
        public NovelDetailInfoResponseOrBuilder getDataOrBuilder() {
            return getData();
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
        public String getErrmsg() {
            Object obj = this.errmsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errmsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
        public ByteString getErrmsgBytes() {
            Object obj = this.errmsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errmsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
        public int getErrno() {
            return this.errno_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<NovelDetailResponse> getParserForType() {
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

        @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
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
            return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable.m19575new(NovelDetailResponse.class, Builder.class);
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
            return new NovelDetailResponse();
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

        public static final class Builder extends GeneratedMessageV3.Cif<Builder> implements NovelDetailResponseOrBuilder {
            private a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> dataBuilder_;
            private NovelDetailInfoResponse data_;
            private Object errmsg_;
            private int errno_;

            private a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new a1<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Cif getDescriptor() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor;
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
                this.errmsg_ = NovelDetailResponse.getDefaultInstance().getErrmsg();
                onChanged();
                return this;
            }

            public Builder clearErrno() {
                this.errno_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public NovelDetailInfoResponse getData() {
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (NovelDetailInfoResponse) a1Var.m19692try();
                }
                NovelDetailInfoResponse novelDetailInfoResponse = this.data_;
                return novelDetailInfoResponse == null ? NovelDetailInfoResponse.getDefaultInstance() : novelDetailInfoResponse;
            }

            public NovelDetailInfoResponse.Builder getDataBuilder() {
                onChanged();
                return (NovelDetailInfoResponse.Builder) getDataFieldBuilder().m19690new();
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public NovelDetailInfoResponseOrBuilder getDataOrBuilder() {
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var != null) {
                    return (NovelDetailInfoResponseOrBuilder) a1Var.m19685case();
                }
                NovelDetailInfoResponse novelDetailInfoResponse = this.data_;
                return novelDetailInfoResponse == null ? NovelDetailInfoResponse.getDefaultInstance() : novelDetailInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Cif getDescriptorForType() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public String getErrmsg() {
                Object obj = this.errmsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errmsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public ByteString getErrmsgBytes() {
                Object obj = this.errmsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errmsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public int getErrno() {
                return this.errno_;
            }

            @Override // com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailResponseOuterClass.NovelDetailResponseOrBuilder
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return NovelDetailResponseOuterClass.internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable.m19575new(NovelDetailResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeData(NovelDetailInfoResponse novelDetailInfoResponse) {
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    NovelDetailInfoResponse novelDetailInfoResponse2 = this.data_;
                    if (novelDetailInfoResponse2 != null) {
                        this.data_ = NovelDetailInfoResponse.newBuilder(novelDetailInfoResponse2).mergeFrom(novelDetailInfoResponse).buildPartial();
                    } else {
                        this.data_ = novelDetailInfoResponse;
                    }
                    onChanged();
                } else {
                    a1Var.m19687else(novelDetailInfoResponse);
                }
                return this;
            }

            public Builder setData(NovelDetailInfoResponse novelDetailInfoResponse) {
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    Objects.requireNonNull(novelDetailInfoResponse);
                    this.data_ = novelDetailInfoResponse;
                    onChanged();
                } else {
                    a1Var.m19691this(novelDetailInfoResponse);
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
            public NovelDetailResponse build() {
                NovelDetailResponse novelDetailResponseBuildPartial = buildPartial();
                if (novelDetailResponseBuildPartial.isInitialized()) {
                    return novelDetailResponseBuildPartial;
                }
                throw AbstractMessage.Cdo.newUninitializedMessageException((Message) novelDetailResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public NovelDetailResponse buildPartial() {
                NovelDetailResponse novelDetailResponse = new NovelDetailResponse(this);
                novelDetailResponse.errno_ = this.errno_;
                novelDetailResponse.errmsg_ = this.errmsg_;
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
                if (a1Var == null) {
                    novelDetailResponse.data_ = this.data_;
                } else {
                    novelDetailResponse.data_ = (NovelDetailInfoResponse) a1Var.m19686do();
                }
                onBuilt();
                return novelDetailResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.Celse celse) {
                return (Builder) super.clearField(celse);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public NovelDetailResponse getDefaultInstanceForType() {
                return NovelDetailResponse.getDefaultInstance();
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

            public Builder setData(NovelDetailInfoResponse.Builder builder) {
                a1<NovelDetailInfoResponse, NovelDetailInfoResponse.Builder, NovelDetailInfoResponseOrBuilder> a1Var = this.dataBuilder_;
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
                if (message instanceof NovelDetailResponse) {
                    return mergeFrom((NovelDetailResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(NovelDetailResponse novelDetailResponse) {
                if (novelDetailResponse == NovelDetailResponse.getDefaultInstance()) {
                    return this;
                }
                if (novelDetailResponse.getErrno() != 0) {
                    setErrno(novelDetailResponse.getErrno());
                }
                if (!novelDetailResponse.getErrmsg().isEmpty()) {
                    this.errmsg_ = novelDetailResponse.errmsg_;
                    onChanged();
                }
                if (novelDetailResponse.hasData()) {
                    mergeData(novelDetailResponse.getData());
                }
                mergeUnknownFields(novelDetailResponse.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
                NovelDetailResponse novelDetailResponse = null;
                try {
                    try {
                        NovelDetailResponse novelDetailResponse2 = (NovelDetailResponse) NovelDetailResponse.PARSER.parsePartialFrom(codedInputStream, cimplements);
                        if (novelDetailResponse2 != null) {
                            mergeFrom(novelDetailResponse2);
                        }
                        return this;
                    } catch (n e) {
                        NovelDetailResponse novelDetailResponse3 = (NovelDetailResponse) e.getUnfinishedMessage();
                        try {
                            throw e.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            novelDetailResponse = novelDetailResponse3;
                            if (novelDetailResponse != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (novelDetailResponse != null) {
                        mergeFrom(novelDetailResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(NovelDetailResponse novelDetailResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(novelDetailResponse);
        }

        public static NovelDetailResponse parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteBuffer, cimplements);
        }

        private NovelDetailResponse(GeneratedMessageV3.Cif<?> cif) {
            super(cif);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NovelDetailResponse parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailResponse parseFrom(ByteString byteString) throws n {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NovelDetailResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static NovelDetailResponse parseFrom(ByteString byteString, Cimplements cimplements) throws n {
            return PARSER.parseFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private NovelDetailResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.errmsg_ = "";
        }

        public static NovelDetailResponse parseFrom(byte[] bArr) throws n {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static NovelDetailResponse parseFrom(byte[] bArr, Cimplements cimplements) throws n {
            return PARSER.parseFrom(bArr, cimplements);
        }

        public static NovelDetailResponse parseFrom(InputStream inputStream) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private NovelDetailResponse(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                NovelDetailInfoResponse novelDetailInfoResponse = this.data_;
                                NovelDetailInfoResponse.Builder builder = novelDetailInfoResponse != null ? novelDetailInfoResponse.toBuilder() : null;
                                NovelDetailInfoResponse novelDetailInfoResponse2 = (NovelDetailInfoResponse) codedInputStream.mo18430interface(NovelDetailInfoResponse.parser(), cimplements);
                                this.data_ = novelDetailInfoResponse2;
                                if (builder != null) {
                                    builder.mergeFrom(novelDetailInfoResponse2);
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

        public static NovelDetailResponse parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, cimplements);
        }

        public static NovelDetailResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static NovelDetailResponse parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return (NovelDetailResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, cimplements);
        }
    }

    public interface NovelDetailResponseOrBuilder extends MessageOrBuilder {
        NovelDetailInfoResponse getData();

        NovelDetailInfoResponseOrBuilder getDataOrBuilder();

        String getErrmsg();

        ByteString getErrmsgBytes();

        int getErrno();

        boolean hasData();
    }

    static {
        Descriptors.Cif cif = getDescriptor().m19244while().get(0);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor = cif;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif, new String[]{"Errno", "Errmsg", "Data"});
        Descriptors.Cif cif2 = getDescriptor().m19244while().get(1);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor = cif2;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif2, new String[]{"NovelId", "Name", "Zone", "Status", "LastUpdateVolumeName", "LastUpdateChapterName", "LastUpdateVolumeId", "LastUpdateChapterId", "LastUpdateTime", "Cover", "HotHits", "Introduction", "Types", "Authors", "FirstLetter", "SubscribeNum", "RedisUpdateTime", "Volume"});
        Descriptors.Cif cif3 = getDescriptor().m19244while().get(2);
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor = cif3;
        internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(cif3, new String[]{"VolumeId", "LnovelId", "VolumeName", "VolumeOrder", "Addtime", "SumChapters"});
    }

    private NovelDetailResponseOuterClass() {
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
