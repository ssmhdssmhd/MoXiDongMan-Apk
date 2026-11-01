.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const-string v0, "\n\u001bnovel_detail_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel\"\u0095\u0001\n\u0013NovelDetailResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012_\n\u0004Data\u0018\u0003 \u0001(\u000b2Q.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailInfoResponse\"\u00e7\u0003\n\u0017NovelDetailInfoResponse\u0012\u000f\n\u0007NovelId\u0018\u0001 \u0001(\u0005\u0012\u000c\n\u0004Name\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004Zone\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006Status\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014LastUpdateVolumeName\u0018\u0005 \u0001(\t\u0012\u001d\n\u0015LastUpdateChapterName\u0018\u0006 \u0001(\t\u0012\u001a\n\u0012LastUpdateVolumeId\u0018\u0007 \u0001(\u0005\u0012\u001b\n\u0013LastUpdateChapterId\u0018\u0008 \u0001(\u0005\u0012\u0016\n\u000eLastUpdateTime\u0018\t \u0001(\u0003\u0012\r\n\u0005Cover\u0018\n \u0001(\t\u0012\u000f\n\u0007HotHits\u0018\u000b \u0001(\u0005\u0012\u0014\n\u000cIntroduction\u0018\u000c \u0001(\t\u0012\r\n\u0005Types\u0018\r \u0003(\t\u0012\u000f\n\u0007Authors\u0018\u000e \u0001(\t\u0012\u0013\n\u000bFirstLetter\u0018\u000f \u0001(\t\u0012\u0014\n\u000cSubscribeNum\u0018\u0010 \u0001(\u0005\u0012\u0017\n\u000fRedisUpdateTime\u0018\u0011 \u0001(\u0003\u0012g\n\u0006Volume\u0018\u0012 \u0003(\u000b2W.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelDetailInfoVolumeResponse\"\u0092\u0001\n\u001dNovelDetailInfoVolumeResponse\u0012\u0010\n\u0008VolumeId\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008LnovelId\u0018\u0002 \u0001(\u0005\u0012\u0012\n\nVolumeName\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bVolumeOrder\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007Addtime\u0018\u0005 \u0001(\u0003\u0012\u0013\n\u000bSumChapters\u0018\u0006 \u0001(\u0005b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Errno"

    const-string v3, "Errmsg"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "NovelId"

    const-string v3, "Name"

    const-string v4, "Zone"

    const-string v5, "Status"

    const-string v6, "LastUpdateVolumeName"

    const-string v7, "LastUpdateChapterName"

    const-string v8, "LastUpdateVolumeId"

    const-string v9, "LastUpdateChapterId"

    const-string v10, "LastUpdateTime"

    const-string v11, "Cover"

    const-string v12, "HotHits"

    const-string v13, "Introduction"

    const-string v14, "Types"

    const-string v15, "Authors"

    const-string v16, "FirstLetter"

    const-string v17, "SubscribeNum"

    const-string v18, "RedisUpdateTime"

    const-string v19, "Volume"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 7
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "VolumeId"

    const-string v3, "LnovelId"

    const-string v4, "VolumeName"

    const-string v5, "VolumeOrder"

    const-string v6, "Addtime"

    const-string v7, "SumChapters"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$5100()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelDetailInfoVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->registerAllExtensions(Lcom/google/protobuf/implements;)V

    return-void
.end method
