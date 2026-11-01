.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponseOrBuilder;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListResponse;,
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

.field private static final internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "\n\u0018news_list_response.proto\u00127com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news\"\u008e\u0001\n\u0010NewsListResponse\u0012\r\n\u0005Errno\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006Errmsg\u0018\u0002 \u0001(\t\u0012[\n\u0004Data\u0018\u0003 \u0003(\u000b2M.com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.news.NewsListItemResponse\"\u00f0\u0002\n\u0014NewsListItemResponse\u0012\u0011\n\tArticleId\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005Title\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008FromName\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007FromUrl\u0018\u0004 \u0001(\t\u0012\u0012\n\nCreateTime\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tIsForeign\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nForeignUrl\u0018\u0007 \u0001(\t\u0012\r\n\u0005Intro\u0018\u0008 \u0001(\t\u0012\u0010\n\u0008AuthorId\u0018\t \u0001(\u0005\u0012\u000e\n\u0006Status\u0018\n \u0001(\u0005\u0012\u0011\n\tRowPicUrl\u0018\u000b \u0001(\t\u0012\u0011\n\tColPicUrl\u0018\u000c \u0001(\t\u0012\u0011\n\tQchatShow\u0018\r \u0001(\u0005\u0012\u000f\n\u0007PageUrl\u0018\u000e \u0001(\t\u0012\u0015\n\rCommentAmount\u0018\u000f \u0001(\u0005\u0012\u0011\n\tAuthorUid\u0018\u0010 \u0001(\u0005\u0012\r\n\u0005Cover\u0018\u0011 \u0001(\t\u0012\u0010\n\u0008Nickname\u0018\u0012 \u0001(\t\u0012\u0012\n\nMoodAmount\u0018\u0013 \u0001(\u0005b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Errno"

    const-string v3, "Errmsg"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ArticleId"

    const-string v3, "Title"

    const-string v4, "FromName"

    const-string v5, "FromUrl"

    const-string v6, "CreateTime"

    const-string v7, "IsForeign"

    const-string v8, "ForeignUrl"

    const-string v9, "Intro"

    const-string v10, "AuthorId"

    const-string v11, "Status"

    const-string v12, "RowPicUrl"

    const-string v13, "ColPicUrl"

    const-string v14, "QchatShow"

    const-string v15, "PageUrl"

    const-string v16, "CommentAmount"

    const-string v17, "AuthorUid"

    const-string v18, "Cover"

    const-string v19, "Nickname"

    const-string v20, "MoodAmount"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_descriptor:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->internal_static_com_wsw_cospa_utils_analyzeUrl_Utils_protobuf_dmzj_news_NewsListItemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->registerAllExtensions(Lcom/google/protobuf/implements;)V

    return-void
.end method
