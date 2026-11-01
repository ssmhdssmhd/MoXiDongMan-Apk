.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "\n\u0018rank_list_response.proto\u00128com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic\"\u0099\u0001\n\u0015ComicRankListResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012a\n\u0004Data\u0018\u0003 \u0003(\u000b2S.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ComicRankListItemResponse\"\u0086\u0002\n\u0019ComicRankListItemResponse\u0012\u000f\n\u0007ComicId\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007Authors\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006Status\u0018\u0004 \u0001(\t\u0012\r\n\u0005Cover\u0018\u0005 \u0001(\t\u0012\r\n\u0005Types\u0018\u0006 \u0001(\t\u0012\u0016\n\u000eLastUpdatetime\u0018\u0007 \u0001(\u0003\u0012\u001d\n\u0015LastUpdateChapterName\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007ComicPy\u0018\t \u0001(\t\u0012\u000b\n\u0003Num\u0018\n \u0001(\u0005\u0012\r\n\u0005TagId\u0018\u000b \u0001(\u0005\u0012\u0013\n\u000bChapterName\u0018\u000c \u0001(\t\u0012\u0011\n\tChapterId\u0018\r \u0001(\u0005b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Errno"

    const-string v3, "Errmsg"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ComicId"

    const-string v3, "Title"

    const-string v4, "Authors"

    const-string v5, "Status"

    const-string v6, "Cover"

    const-string v7, "Types"

    const-string v8, "LastUpdatetime"

    const-string v9, "LastUpdateChapterName"

    const-string v10, "ComicPy"

    const-string v11, "Num"

    const-string v12, "TagId"

    const-string v13, "ChapterName"

    const-string v14, "ChapterId"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_comic_ComicRankListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->registerAllExtensions(Lcom/google/protobuf/implements;)V

    return-void
.end method
