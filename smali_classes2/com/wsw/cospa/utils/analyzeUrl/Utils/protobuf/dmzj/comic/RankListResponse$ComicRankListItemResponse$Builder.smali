.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;",
        ">;",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private authors_:Ljava/lang/Object;

.field private chapterId_:I

.field private chapterName_:Ljava/lang/Object;

.field private comicId_:I

.field private comicPy_:Ljava/lang/Object;

.field private cover_:Ljava/lang/Object;

.field private lastUpdateChapterName_:Ljava/lang/Object;

.field private lastUpdatetime_:J

.field private num_:I

.field private status_:Ljava/lang/Object;

.field private tagId_:I

.field private title_:Ljava/lang/Object;

.field private types_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->access$1400()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$1800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
    .locals 3

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$1;)V

    .line 4
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;I)I

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdatetime_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;J)J

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->num_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;I)I

    .line 14
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->tagId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;I)I

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicId_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 10
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdatetime_:J

    .line 13
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->num_:I

    .line 16
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->tagId_:I

    .line 17
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 18
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterId_:I

    return-object p0
.end method

.method public clearAuthors()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getAuthors()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearChapterId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearChapterName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearComicId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearComicPy()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getComicPy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearCover()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public clearLastUpdateChapterName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdatetime()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdatetime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearNum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->num_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public clearStatus()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTagId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->tagId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTitle()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTypes()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTypes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterId_:I

    return v0
.end method

.method public getChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getComicId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicId_:I

    return v0
.end method

.method public getComicPy()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getComicPyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->access$1400()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdatetime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdatetime_:J

    return-wide v0
.end method

.method public getNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->num_:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->tagId_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTypes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
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

    .line 51
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 52
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getComicId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getComicId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setComicId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getAuthors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2200(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTypes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2500(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getLastUpdatetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getLastUpdatetime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setLastUpdatetime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getComicPy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$2800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 36
    :cond_9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getNum()I

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 38
    :cond_a
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTagId()I

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getTagId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setTagId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 40
    :cond_b
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 43
    :cond_c
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getChapterId()I

    move-result v0

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->getChapterId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 45
    :cond_d
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3300(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public setAuthors(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setAuthorsBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3600(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->authors_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setChapterName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setChapterNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$4200(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->chapterName_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setComicId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setComicPy(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setComicPyBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$4100(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCover(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCoverBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3800(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->cover_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public setLastUpdateChapterName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$4000(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdatetime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->lastUpdatetime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->num_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method

.method public setStatus(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setStatusBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3700(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->status_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTagId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->tagId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3500(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->title_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTypes(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTypesBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse;->access$3900(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->types_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/RankListResponse$ComicRankListItemResponse$Builder;

    return-object p1
.end method
