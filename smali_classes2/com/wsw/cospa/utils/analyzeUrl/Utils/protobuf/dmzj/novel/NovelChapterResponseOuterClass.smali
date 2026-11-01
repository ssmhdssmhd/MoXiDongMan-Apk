.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterVolumeResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterVolumeResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "\n\u001cnovel_chapter_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel\"\u0099\u0001\n\u0014NovelChapterResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012b\n\u0004Data\u0018\u0003 \u0003(\u000b2T.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterVolumeResponse\"\u00bd\u0001\n\u001aNovelChapterVolumeResponse\u0012\u0010\n\u0008VolumeId\u0018\u0001 \u0001(\u0005\u0012\u0012\n\nVolumeName\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bVolumeOrder\u0018\u0003 \u0001(\u0005\u0012d\n\u0008Chapters\u0018\u0004 \u0003(\u000b2R.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.novel.NovelChapterItemResponse\"X\n\u0018NovelChapterItemResponse\u0012\u0011\n\tChapterId\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bChapterName\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cChapterOrder\u0018\u0003 \u0001(\u0005b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Errno"

    const-string v3, "Errmsg"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "VolumeId"

    const-string v3, "VolumeName"

    const-string v4, "VolumeOrder"

    const-string v5, "Chapters"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 7
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ChapterId"

    const-string v3, "ChapterName"

    const-string v4, "ChapterOrder"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterVolumeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$2900()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$3000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_novel_NovelChapterItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;->registerAllExtensions(Lcom/google/protobuf/implements;)V

    return-void
.end method
