.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChapterDetailInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final CHAPTERID__FIELD_NUMBER:I = 0x1

.field public static final CHAPTERORDER__FIELD_NUMBER:I = 0x4

.field public static final COMICID__FIELD_NUMBER:I = 0x2

.field public static final COMMENTCOUNT__FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

.field public static final DIRECTION__FIELD_NUMBER:I = 0x5

.field public static final PAGEURLHD__FIELD_NUMBER:I = 0x8

.field public static final PAGEURL__FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICNUM__FIELD_NUMBER:I = 0x7

.field public static final TITLE__FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private chapterId_:J

.field private chapterOrder_:I

.field private comicId_:J

.field private commentCount_:I

.field private direction_:I

.field private memoizedIsInitialized:B

.field private pageUrlHd_:Lcom/google/protobuf/LazyStringList;

.field private pageUrl_:Lcom/google/protobuf/LazyStringList;

.field private picnum_:I

.field private volatile title_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$1;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b

    const/16 v5, 0x10

    if-eq v3, v5, :cond_a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x20

    if-eq v3, v5, :cond_8

    const/16 v5, 0x28

    if-eq v3, v5, :cond_7

    const/16 v5, 0x32

    if-eq v3, v5, :cond_5

    const/16 v5, 0x38

    if-eq v3, v5, :cond_4

    const/16 v5, 0x42

    if-eq v3, v5, :cond_2

    const/16 v5, 0x48

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->commentCount_:I

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3

    .line 17
    new-instance v4, Lcom/google/protobuf/s;

    invoke-direct {v4}, Lcom/google/protobuf/s;-><init>()V

    iput-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 18
    :cond_3
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->picnum_:I

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6

    .line 21
    new-instance v4, Lcom/google/protobuf/s;

    invoke-direct {v4}, Lcom/google/protobuf/s;-><init>()V

    iput-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->direction_:I

    goto :goto_0

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterOrder_:I

    goto :goto_0

    .line 25
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 26
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 27
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->comicId_:J

    goto/16 :goto_0

    .line 28
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterId_:J
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_d

    .line 32
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_e

    .line 33
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 34
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 36
    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 37
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 39
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterId_:J

    return-wide p1
.end method

.method public static synthetic access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->comicId_:J

    return-wide p1
.end method

.method public static synthetic access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterOrder_:I

    return p1
.end method

.method public static synthetic access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->direction_:I

    return p1
.end method

.method public static synthetic access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->picnum_:I

    return p1
.end method

.method public static synthetic access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->commentCount_:I

    return p1
.end method

.method public static synthetic access$2800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static synthetic access$2900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterId()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterId()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getComicId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getComicId()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    return v5

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterOrder()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterOrder()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v5

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDirection()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDirection()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v5

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v5

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPicnum()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPicnum()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v5

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getCommentCount()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getCommentCount()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v5

    .line 22
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v0
.end method

.method public getChapterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterId_:J

    return-wide v0
.end method

.method public getChapterOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterOrder_:I

    return v0
.end method

.method public getComicId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->comicId_:J

    return-wide v0
.end method

.method public getCommentCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->commentCount_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->direction_:I

    return v0
.end method

.method public getPageUrl(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPageUrlBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPageUrlCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageUrlHd(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPageUrlHdBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPageUrlHdCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getPageUrlHdList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrlList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getPageUrlList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPicnum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->picnum_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterId_:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 3
    invoke-static {v4, v0, v1}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-wide v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->comicId_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-static {v1, v6, v7}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterOrder_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->direction_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v2

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->picnum_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    const/4 v1, 0x0

    .line 17
    :goto_2
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_8

    .line 18
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v5}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 20
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->commentCount_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

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
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterId()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getComicId()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterOrder()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDirection()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPicnum()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getCommentCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

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
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->comicId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->chapterOrder_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->direction_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->picnum_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 15
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 16
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_7
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->commentCount_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
