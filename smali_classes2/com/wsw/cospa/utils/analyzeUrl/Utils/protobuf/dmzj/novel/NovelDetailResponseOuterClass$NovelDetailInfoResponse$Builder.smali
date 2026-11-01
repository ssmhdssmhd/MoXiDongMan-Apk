.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;",
        ">;",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private authors_:Ljava/lang/Object;

.field private bitField0_:I

.field private cover_:Ljava/lang/Object;

.field private firstLetter_:Ljava/lang/Object;

.field private hotHits_:I

.field private introduction_:Ljava/lang/Object;

.field private lastUpdateChapterId_:I

.field private lastUpdateChapterName_:Ljava/lang/Object;

.field private lastUpdateTime_:J

.field private lastUpdateVolumeId_:I

.field private lastUpdateVolumeName_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private novelId_:I

.field private redisUpdateTime_:J

.field private status_:Ljava/lang/Object;

.field private subscribeNum_:I

.field private types_:Lcom/google/protobuf/LazyStringList;

.field private volumeBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volume_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private zone_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 12
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 15
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 25
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 28
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureTypesIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/s;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureVolumeIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllTypes(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addAllVolume(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public addTypes(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addTypesBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4700(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addVolume(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addVolume(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addVolume(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addVolume(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addVolumeBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;

    return-object v0
.end method

.method public addVolumeBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 3

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    .line 4
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->novelId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$1902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I

    .line 11
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I

    .line 12
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateTime_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;J)J

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->hotHits_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 18
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 20
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->subscribeNum_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;I)I

    .line 23
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->redisUpdateTime_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;J)J

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_2

    .line 25
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 27
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 5

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->novelId_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 10
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeId_:I

    .line 13
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateTime_:J

    .line 15
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 16
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->hotHits_:I

    .line 17
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 18
    sget-object v4, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 19
    iget v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 20
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 21
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 22
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->subscribeNum_:I

    .line 23
    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->redisUpdateTime_:J

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearAuthors()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthors()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearCover()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public clearFirstLetter()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearHotHits()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->hotHits_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIntroduction()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroduction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateChapterId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateChapterName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateTime()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateTime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateVolumeId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateVolumeName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearNovelId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->novelId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public clearRedisUpdateTime()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->redisUpdateTime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearStatus()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearSubscribeNum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->subscribeNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTypes()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 2
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearVolume()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearZone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLetter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstLetterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHotHits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->hotHits_:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIntroductionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdateChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    return v0
.end method

.method public getLastUpdateChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateTime_:J

    return-wide v0
.end method

.method public getLastUpdateVolumeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeId_:I

    return v0
.end method

.method public getLastUpdateVolumeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateVolumeNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNovelId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->novelId_:I

    return v0
.end method

.method public getRedisUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->redisUpdateTime_:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSubscribeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->subscribeNum_:I

    return v0
.end method

.method public getTypes(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTypesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getTypesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getVolume(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    return-object p1
.end method

.method public getVolumeBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;

    return-object p1
.end method

.method public getVolumeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

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
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

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
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/n;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 83
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNovelId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getNovelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setNovelId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeId()I

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateVolumeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setLastUpdateVolumeId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setLastUpdateChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 32
    :cond_8
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 33
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setLastUpdateTime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$2800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 37
    :cond_a
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getHotHits()I

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getHotHits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setHotHits(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 39
    :cond_b
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getIntroduction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 40
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 42
    :cond_c
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 43
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 44
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    .line 45
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 46
    :cond_d
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 47
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 49
    :cond_e
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getAuthors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 52
    :cond_f
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 55
    :cond_10
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getSubscribeNum()I

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getSubscribeNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setSubscribeNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 57
    :cond_11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getRedisUpdateTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 58
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getRedisUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setRedisUpdateTime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 59
    :cond_12
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_14

    .line 60
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 61
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 63
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_1

    .line 64
    :cond_13
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 65
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_2

    .line 67
    :cond_14
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 68
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 69
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    .line 71
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    .line 72
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->bitField0_:I

    .line 73
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 74
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->getVolumeFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    goto :goto_2

    .line 75
    :cond_16
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 76
    :cond_17
    :goto_2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public removeVolume(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->static(I)V

    :goto_0
    return-object p0
.end method

.method public setAuthors(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setAuthorsBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4800(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->authors_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCover(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCoverBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4500(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setFirstLetter(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setFirstLetterBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4900(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setHotHits(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->hotHits_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIntroduction(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIntroductionBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4600(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->introduction_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4400(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateTime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateVolumeId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateVolumeName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateVolumeNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4300(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->lastUpdateVolumeName_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4000(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->name_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setNovelId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->novelId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setRedisUpdateTime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->redisUpdateTime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setStatus(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setStatusBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4200(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->status_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setSubscribeNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->subscribeNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTypes(ILjava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setVolume(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setVolume(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoVolumeResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volumeBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->ensureVolumeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->volume_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setZone(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setZoneBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->access$4100(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->zone_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
