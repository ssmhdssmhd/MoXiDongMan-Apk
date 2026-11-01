.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComicUpdateListItemResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    }
.end annotation


# static fields
.field public static final AUTHORS_FIELD_NUMBER:I = 0x4

.field public static final COMICID_FIELD_NUMBER:I = 0x1

.field public static final COVER_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

.field public static final ISLONG_FIELD_NUMBER:I = 0x3

.field public static final LASTUPDATECHAPTERID_FIELD_NUMBER:I = 0x9

.field public static final LASTUPDATECHAPTERNAME_FIELD_NUMBER:I = 0x8

.field public static final LASTUPDATETIME_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x7

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TYPES_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private volatile authors_:Ljava/lang/Object;

.field private comicId_:I

.field private volatile cover_:Ljava/lang/Object;

.field private islong_:Z

.field private lastUpdateChapterId_:I

.field private volatile lastUpdateChapterName_:Ljava/lang/Object;

.field private lastUpdatetime_:J

.field private memoizedIsInitialized:B

.field private volatile status_:Ljava/lang/Object;

.field private volatile title_:Ljava/lang/Object;

.field private volatile types_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$1;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v2

    goto :goto_2

    .line 18
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdatetime_:J

    goto :goto_0

    .line 19
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterId_:I

    goto :goto_0

    .line 20
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->return()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->islong_:Z

    goto :goto_0

    .line 31
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->comicId_:I
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 35
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$if<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->comicId_:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->islong_:Z

    return p1
.end method

.method public static synthetic access$2300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterId_:I

    return p1
.end method

.method public static synthetic access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdatetime_:J

    return-wide p1
.end method

.method public static synthetic access$3000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static synthetic access$3100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse;->access$1400()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getComicId()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getComicId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getIslong()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getIslong()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getAuthors()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getAuthors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTypes()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterId()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterId()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdatetime()J

    move-result-wide v1

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdatetime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_b

    return v3

    .line 24
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getComicId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->comicId_:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    return-object v0
.end method

.method public getIslong()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->islong_:Z

    return v0
.end method

.method public getLastUpdateChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterId_:I

    return v0
.end method

.method public getLastUpdateChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdatetime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdatetime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->comicId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->islong_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->goto(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getAuthorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTypesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getStatusBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 15
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 17
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterId_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdatetime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v3, 0xa

    .line 21
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTypes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getComicId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getIslong()Z

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/Internal;->catch(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getAuthors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTypes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdatetime()J

    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$1;)V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->comicId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->islong_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeBool(IZ)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getAuthorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->authors_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getTypesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->types_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->cover_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getStatusBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->status_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdateChapterId_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 19
    :cond_8
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/UpdateListResponse$ComicUpdateListItemResponse;->lastUpdatetime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v2, 0xa

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
