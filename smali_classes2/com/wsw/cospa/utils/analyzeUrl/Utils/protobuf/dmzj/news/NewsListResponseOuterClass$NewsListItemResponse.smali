.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsListItemResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    }
.end annotation


# static fields
.field public static final ARTICLEID_FIELD_NUMBER:I = 0x1

.field public static final AUTHORID_FIELD_NUMBER:I = 0x9

.field public static final AUTHORUID_FIELD_NUMBER:I = 0x10

.field public static final COLPICURL_FIELD_NUMBER:I = 0xc

.field public static final COMMENTAMOUNT_FIELD_NUMBER:I = 0xf

.field public static final COVER_FIELD_NUMBER:I = 0x11

.field public static final CREATETIME_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

.field public static final FOREIGNURL_FIELD_NUMBER:I = 0x7

.field public static final FROMNAME_FIELD_NUMBER:I = 0x3

.field public static final FROMURL_FIELD_NUMBER:I = 0x4

.field public static final INTRO_FIELD_NUMBER:I = 0x8

.field public static final ISFOREIGN_FIELD_NUMBER:I = 0x6

.field public static final MOODAMOUNT_FIELD_NUMBER:I = 0x13

.field public static final NICKNAME_FIELD_NUMBER:I = 0x12

.field public static final PAGEURL_FIELD_NUMBER:I = 0xe

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final QCHATSHOW_FIELD_NUMBER:I = 0xd

.field public static final ROWPICURL_FIELD_NUMBER:I = 0xb

.field public static final STATUS_FIELD_NUMBER:I = 0xa

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private articleId_:I

.field private authorId_:I

.field private authorUid_:I

.field private volatile colPicUrl_:Ljava/lang/Object;

.field private commentAmount_:I

.field private volatile cover_:Ljava/lang/Object;

.field private createTime_:J

.field private volatile foreignUrl_:Ljava/lang/Object;

.field private volatile fromName_:Ljava/lang/Object;

.field private volatile fromUrl_:Ljava/lang/Object;

.field private volatile intro_:Ljava/lang/Object;

.field private isForeign_:I

.field private memoizedIsInitialized:B

.field private moodAmount_:I

.field private volatile nickname_:Ljava/lang/Object;

.field private volatile pageUrl_:Ljava/lang/Object;

.field private qchatShow_:I

.field private volatile rowPicUrl_:Ljava/lang/Object;

.field private status_:I

.field private volatile title_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$1;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v2

    goto/16 :goto_2

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->moodAmount_:I

    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorUid_:I

    goto :goto_0

    .line 28
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->commentAmount_:I

    goto :goto_0

    .line 29
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->qchatShow_:I

    goto :goto_0

    .line 32
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->status_:I

    goto :goto_0

    .line 37
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorId_:I

    goto :goto_0

    .line 38
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 41
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->isForeign_:I

    goto :goto_0

    .line 43
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->createTime_:J

    goto :goto_0

    .line 44
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->articleId_:I
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_13
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 52
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 56
    throw p1

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x22 -> :sswitch_f
        0x28 -> :sswitch_e
        0x30 -> :sswitch_d
        0x3a -> :sswitch_c
        0x42 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x5a -> :sswitch_8
        0x62 -> :sswitch_7
        0x68 -> :sswitch_6
        0x72 -> :sswitch_5
        0x78 -> :sswitch_4
        0x80 -> :sswitch_3
        0x8a -> :sswitch_2
        0x92 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->articleId_:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->createTime_:J

    return-wide p1
.end method

.method public static synthetic access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->isForeign_:I

    return p1
.end method

.method public static synthetic access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorId_:I

    return p1
.end method

.method public static synthetic access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->status_:I

    return p1
.end method

.method public static synthetic access$3000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->qchatShow_:I

    return p1
.end method

.method public static synthetic access$3300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->commentAmount_:I

    return p1
.end method

.method public static synthetic access$3502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorUid_:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->moodAmount_:I

    return p1
.end method

.method public static synthetic access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static synthetic access$4000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4100(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4200(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4300(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4400(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4500(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4600(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4800(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$4900(Lcom/google/protobuf/ByteString;)V
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

.method public static synthetic access$5000(Lcom/google/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->access$1400()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getArticleId()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getArticleId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromUrl()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCreateTime()J

    move-result-wide v1

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCreateTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIsForeign()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIsForeign()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getForeignUrl()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getForeignUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIntro()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorId()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorId()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getStatus()I

    move-result v1

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getRowPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getRowPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getColPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getColPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getQchatShow()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getQchatShow()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCommentAmount()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCommentAmount()I

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorUid()I

    move-result v1

    .line 35
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorUid()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getMoodAmount()I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getMoodAmount()I

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 42
    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v3

    :cond_15
    return v0
.end method

.method public getArticleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->articleId_:I

    return v0
.end method

.method public getAuthorId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorId_:I

    return v0
.end method

.method public getAuthorUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorUid_:I

    return v0
.end method

.method public getColPicUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getColPicUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCommentAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->commentAmount_:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->createTime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    return-object v0
.end method

.method public getForeignUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getForeignUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFromNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFromUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIntroBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsForeign()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->isForeign_:I

    return v0
.end method

.method public getMoodAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->moodAmount_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQchatShow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->qchatShow_:I

    return v0
.end method

.method public getRowPicUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowPicUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

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
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->articleId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->createTime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v3, 0x5

    .line 11
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->isForeign_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getForeignUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 15
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 17
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorId_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->status_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getRowPicUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 23
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getColPicUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 25
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->qchatShow_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getPageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 29
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->commentAmount_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_f
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorUid_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 35
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    .line 37
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_12
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->moodAmount_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 39
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->status_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

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
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getArticleId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCreateTime()J

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIsForeign()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getForeignUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getStatus()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getRowPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getColPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getQchatShow()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCommentAmount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getAuthorUid()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getMoodAmount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 23
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$1;)V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse$Builder;

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
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->articleId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getFromUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->fromUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->createTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v2, 0x5

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->isForeign_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getForeignUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->foreignUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->intro_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorId_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->status_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getRowPicUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 22
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->rowPicUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getColPicUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->colPicUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->qchatShow_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 27
    :cond_c
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getPageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 28
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->pageUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->commentAmount_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->authorUid_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 33
    :cond_f
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 34
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->cover_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 35
    :cond_10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    .line 36
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->nickname_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 37
    :cond_11
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/news/NewsListResponseOuterClass$NewsListItemResponse;->moodAmount_:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 39
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
