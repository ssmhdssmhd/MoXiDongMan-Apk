.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const-string v0, "\n\u0015detail_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u0095\u0001\n\u0013ComicDetailResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012_\n\u0004Data\u0018\u0003 \u0001(\u000b2Q.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailInfoResponse\"\u00c4\u0006\n\u0017ComicDetailInfoResponse\u0012\n\n\u0002Id\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u0011\n\tDirection\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006Islong\u0018\u0004 \u0001(\u0005\u0012\u000e\n\u0006IsDmzj\u0018\u0005 \u0001(\u0005\u0012\r\n\u0005Cover\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bDescription\u0018\u0007 \u0001(\t\u0012\u0016\n\u000eLastUpdatetime\u0018\u0008 \u0001(\u0003\u0012\u001d\n\u0015LastUpdateChapterName\u0018\t \u0001(\t\u0012\u0011\n\tCopyright\u0018\n \u0001(\u0005\u0012\u0013\n\u000bFirstLetter\u0018\u000b \u0001(\t\u0012\u000f\n\u0007ComicPy\u0018\u000c \u0001(\t\u0012\u000e\n\u0006Hidden\u0018\r \u0001(\u0005\u0012\u000e\n\u0006HotNum\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006HitNum\u0018\u000f \u0001(\u0005\u0012\u000b\n\u0003Uid\u0018\u0010 \u0001(\u0005\u0012\u000e\n\u0006IsLock\u0018\u0011 \u0001(\u0005\u0012\u001b\n\u0013LastUpdateChapterId\u0018\u0012 \u0001(\u0005\u0012d\n\u0005Types\u0018\u0013 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012e\n\u0006Status\u0018\u0014 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012f\n\u0007Authors\u0018\u0015 \u0003(\u000b2U.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailTypeItemResponse\u0012\u0014\n\u000cSubscribeNum\u0018\u0016 \u0001(\u0005\u0012f\n\u0008Chapters\u0018\u0017 \u0003(\u000b2T.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailChapterResponse\u0012\u0013\n\u000bIsNeedLogin\u0018\u0018 \u0001(\u0005\u0012\u0015\n\rIsHideChapter\u0018\u001a \u0001(\u0005\"=\n\u001bComicDetailTypeItemResponse\u0012\r\n\u0005TagId\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007TagName\u0018\u0002 \u0001(\t\"\u0093\u0001\n\u001aComicDetailChapterResponse\u0012\r\n\u0005Title\u0018\u0001 \u0001(\t\u0012f\n\u0004Data\u0018\u0002 \u0003(\u000b2X.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicDetailChapterInfoResponse\"\u0085\u0001\n\u001eComicDetailChapterInfoResponse\u0012\u0011\n\tChapterId\u0018\u0001 \u0001(\u0005\u0012\u0014\n\u000cChapterTitle\u0018\u0002 \u0001(\t\u0012\u0012\n\nUpdatetime\u0018\u0003 \u0001(\u0003\u0012\u0010\n\u0008Filesize\u0018\u0004 \u0001(\u0005\u0012\u0014\n\u000cChapterOrder\u0018\u0005 \u0001(\u0005b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Errno"

    const-string v3, "Errmsg"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v5, "Id"

    const-string v6, "Title"

    const-string v7, "Direction"

    const-string v8, "Islong"

    const-string v9, "IsDmzj"

    const-string v10, "Cover"

    const-string v11, "Description"

    const-string v12, "LastUpdatetime"

    const-string v13, "LastUpdateChapterName"

    const-string v14, "Copyright"

    const-string v15, "FirstLetter"

    const-string v16, "ComicPy"

    const-string v17, "Hidden"

    const-string v18, "HotNum"

    const-string v19, "HitNum"

    const-string v20, "Uid"

    const-string v21, "IsLock"

    const-string v22, "LastUpdateChapterId"

    const-string v23, "Types"

    const-string v24, "Status"

    const-string v25, "Authors"

    const-string v26, "SubscribeNum"

    const-string v27, "Chapters"

    const-string v28, "IsNeedLogin"

    const-string v29, "IsHideChapter"

    filled-new-array/range {v5 .. v29}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 7
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "TagId"

    const-string v3, "TagName"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 9
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Title"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ChapterId"

    const-string v3, "ChapterTitle"

    const-string v4, "Updatetime"

    const-string v5, "Filesize"

    const-string v6, "ChapterOrder"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$5700()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$5800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailTypeItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$6900()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$7000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$8200()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$8300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicDetailChapterInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->registerAllExtensions(Lcom/google/protobuf/implements;)V

    return-void
.end method
