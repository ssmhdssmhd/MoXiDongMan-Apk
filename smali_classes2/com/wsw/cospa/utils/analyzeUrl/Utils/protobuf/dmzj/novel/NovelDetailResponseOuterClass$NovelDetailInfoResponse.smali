.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NovelDetailInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final AUTHORS_FIELD_NUMBER:I = 0xe

.field public static final COVER_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

.field public static final FIRSTLETTER_FIELD_NUMBER:I = 0xf

.field public static final HOTHITS_FIELD_NUMBER:I = 0xb

.field public static final INTRODUCTION_FIELD_NUMBER:I = 0xc

.field public static final LASTUPDATECHAPTERID_FIELD_NUMBER:I = 0x8

.field public static final LASTUPDATECHAPTERNAME_FIELD_NUMBER:I = 0x6

.field public static final LASTUPDATETIME_FIELD_NUMBER:I = 0x9

.field public static final LASTUPDATEVOLUMEID_FIELD_NUMBER:I = 0x7

.field public static final LASTUPDATEVOLUMENAME_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NOVELID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDISUPDATETIME_FIELD_NUMBER:I = 0x11

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final SUBSCRIBENUM_FIELD_NUMBER:I = 0x10

.field public static final TYPES_FIELD_NUMBER:I = 0xd

.field public static final VOLUME_FIELD_NUMBER:I = 0x12

.field public static final ZONE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile authors_:Ljava/lang/Object;

.field private volatile cover_:Ljava/lang/Object;

.field private volatile firstLetter_:Ljava/lang/Object;

.field private hotHits_:I

.field private volatile introduction_:Ljava/lang/Object;

.field private lastUpdateChapterId_:I

.field private volatile lastUpdateChapterName_:Ljava/lang/Object;

.field private lastUpdateTime_:J

.field private lastUpdateVolumeId_:I

.field private volatile lastUpdateVolumeName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private novelId_:I

.field private redisUpdateTime_:J

.field private volatile status_:Ljava/lang/Object;

.field private subscribeNum_:I

.field private types_:Lcom/google/protobuf/LazyStringList;

.field private volume_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zone_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$1;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    .line 15
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>()V

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->redisUpdateTime_:J

    goto :goto_0

    .line 28
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->subscribeNum_:I

    goto :goto_0

    .line 29
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 34
    new-instance v4, Lcom/google/protobuf/s;

    invoke-direct {v4}, Lcom/google/protobuf/s;-><init>()V

    iput-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 35
    :cond_2
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hotHits_:I

    goto :goto_0

    .line 39
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 40
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateTime_:J

    goto :goto_0

    .line 42
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterId_:I

    goto/16 :goto_0

    .line 43
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeId_:I

    goto/16 :goto_0

    .line 44
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 45
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 46
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 47
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 49
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 51
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 52
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->novelId_:I
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_12
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_3

    .line 58
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_4

    .line 59
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    .line 60
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 62
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_6
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_7

    .line 64
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    .line 65
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x12 -> :sswitch_10
        0x1a -> :sswitch_f
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x32 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x52 -> :sswitch_8
        0x58 -> :sswitch_7
        0x62 -> :sswitch_6
        0x6a -> :sswitch_5
        0x72 -> :sswitch_4
        0x7a -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->novelId_:I

    return p1
.end method

.method public static synthetic access$2000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeId_:I

    return p1
.end method

.method public static synthetic access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterId_:I

    return p1
.end method

.method public static synthetic access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateTime_:J

    return-wide p1
.end method

.method public static synthetic access$2800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hotHits_:I

    return p1
.end method

.method public static synthetic access$3000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$3102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$3200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->subscribeNum_:I

    return p1
.end method

.method public static synthetic access$3502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->redisUpdateTime_:J

    return-wide p1
.end method

.method public static synthetic access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$3700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static synthetic access$3900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNovelId()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNovelId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZone()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeId()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeId()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateTime()J

    move-result-wide v1

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getHotHits()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getHotHits()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroduction()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroduction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthors()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getSubscribeNum()I

    move-result v1

    .line 35
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getSubscribeNum()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getRedisUpdateTime()J

    move-result-wide v1

    .line 37
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getRedisUpdateTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getVolumeList()Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getVolumeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v3

    :cond_14
    return v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object v0
.end method

.method public getFirstLetter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirstLetterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHotHits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hotHits_:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIntroductionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdateChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterId_:I

    return v0
.end method

.method public getLastUpdateChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateTime_:J

    return-wide v0
.end method

.method public getLastUpdateVolumeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeId_:I

    return v0
.end method

.method public getLastUpdateVolumeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastUpdateVolumeNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNovelId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->novelId_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRedisUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->redisUpdateTime_:J

    return-wide v0
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
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->novelId_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v1, v0}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatusBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    .line 9
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x5

    .line 11
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x6

    .line 13
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    :cond_6
    iget v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeId_:I

    if-eqz v3, :cond_7

    const/4 v4, 0x7

    .line 15
    invoke-static {v4, v3}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 16
    :cond_7
    iget v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterId_:I

    if-eqz v3, :cond_8

    const/16 v4, 0x8

    .line 17
    invoke-static {v4, v3}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 18
    :cond_8
    iget-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateTime_:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/16 v7, 0x9

    .line 19
    invoke-static {v7, v3, v4}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0xa

    .line 21
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 22
    :cond_a
    iget v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hotHits_:I

    if-eqz v3, :cond_b

    const/16 v4, 0xb

    .line 23
    invoke-static {v4, v3}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroductionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0xc

    .line 25
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26
    :goto_1
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 27
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    add-int/2addr v0, v4

    .line 28
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 29
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 30
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_e
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 32
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_f
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->subscribeNum_:I

    if-eqz v1, :cond_10

    const/16 v3, 0x10

    .line 34
    invoke-static {v3, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_10
    iget-wide v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->redisUpdateTime_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 36
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/native;->strictfp(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_11
    :goto_2
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    const/16 v1, 0x12

    .line 38
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    .line 39
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSubscribeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->subscribeNum_:I

    return v0
.end method

.method public getTypes(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTypesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getTypesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public getVolume(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    return-object p1
.end method

.method public getVolumeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVolumeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    return-object v0
.end method

.method public getVolumeOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;

    return-object p1
.end method

.method public getVolumeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    return-object v0
.end method

.method public getZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

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
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNovelId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateTime()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getHotHits()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroduction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getSubscribeNum()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getRedisUpdateTime()J

    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->native(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getVolumeCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getVolumeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 25
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->novelId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->zone_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatusBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->status_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateVolumeId_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateChapterId_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 17
    :cond_7
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->lastUpdateTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 18
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCoverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 20
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->cover_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hotHits_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroductionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->introduction_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    const/16 v4, 0xd

    .line 26
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_c
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    .line 28
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->authors_:Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 29
    :cond_d
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xf

    .line 30
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->firstLetter_:Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 31
    :cond_e
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->subscribeNum_:I

    if-eqz v1, :cond_f

    const/16 v4, 0x10

    .line 32
    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 33
    :cond_f
    iget-wide v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->redisUpdateTime_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    .line 34
    invoke-virtual {p1, v1, v4, v5}, Lcom/google/protobuf/native;->writeInt64(IJ)V

    .line 35
    :cond_10
    :goto_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/16 v1, 0x12

    .line 36
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->volume_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
