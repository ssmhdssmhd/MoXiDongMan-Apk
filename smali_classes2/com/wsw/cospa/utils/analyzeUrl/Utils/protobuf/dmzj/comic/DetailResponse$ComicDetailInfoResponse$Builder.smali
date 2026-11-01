.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;",
        ">;",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private authorsBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private authors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private chaptersBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private chapters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;",
            ">;"
        }
    .end annotation
.end field

.field private comicPy_:Ljava/lang/Object;

.field private copyright_:I

.field private cover_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private direction_:I

.field private firstLetter_:Ljava/lang/Object;

.field private hidden_:I

.field private hitNum_:I

.field private hotNum_:I

.field private id_:I

.field private isDmzj_:I

.field private isHideChapter_:I

.field private isLock_:I

.field private isNeedLogin_:I

.field private islong_:I

.field private lastUpdateChapterId_:I

.field private lastUpdateChapterName_:Ljava/lang/Object;

.field private lastUpdatetime_:J

.field private statusBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private subscribeNum_:I

.field private title_:Ljava/lang/Object;

.field private typesBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private types_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private uid_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureAuthorsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureChaptersIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureStatusIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTypesIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAuthorsFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private getChaptersFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

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

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private getStatusFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private getTypesFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAuthors(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

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

.method public addAllChapters(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

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

.method public addAllStatus(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

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

.method public addAllTypes(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

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

.method public addAuthors(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addAuthors(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

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

.method public addAuthors(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addAuthors(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

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

.method public addAuthorsBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object v0
.end method

.method public addAuthorsBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public addChapters(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addChapters(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

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

.method public addChapters(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addChapters(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

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

.method public addChaptersBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object v0
.end method

.method public addChaptersBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public addStatus(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addStatus(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

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

.method public addStatus(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addStatus(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

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

.method public addStatusBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object v0
.end method

.method public addStatusBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public addTypes(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addTypes(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

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

.method public addTypes(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addTypes(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

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

.method public addTypesBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object v0
.end method

.method public addTypesBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
    .locals 3

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V

    .line 4
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->id_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$1902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->direction_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 7
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->islong_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isDmzj_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdatetime_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;J)J

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->copyright_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hidden_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 17
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hotNum_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 18
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hitNum_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 19
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->uid_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 20
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isLock_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 21
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 22
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 23
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 25
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_3

    .line 29
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 31
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_5

    .line 35
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 37
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 39
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 40
    :goto_2
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->subscribeNum_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 41
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_7

    .line 42
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 43
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 44
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 45
    :cond_6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 46
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 47
    :goto_3
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isNeedLogin_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 48
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isHideChapter_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;I)I

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->id_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 8
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->direction_:I

    .line 9
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->islong_:I

    .line 10
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isDmzj_:I

    .line 11
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 13
    iput-wide v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdatetime_:J

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->copyright_:I

    .line 16
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 17
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 18
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hidden_:I

    .line 19
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hotNum_:I

    .line 20
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hitNum_:I

    .line 21
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->uid_:I

    .line 22
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isLock_:I

    .line 23
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 30
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_2

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 34
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 36
    :goto_2
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->subscribeNum_:I

    .line 37
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_3

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 39
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_3

    .line 40
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 41
    :goto_3
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isNeedLogin_:I

    .line 42
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isHideChapter_:I

    return-object p0
.end method

.method public clearAuthors()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearChapters()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearComicPy()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getComicPy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearCopyright()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->copyright_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearCover()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearDescription()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearDirection()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->direction_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public clearFirstLetter()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearHidden()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hidden_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearHitNum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hitNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearHotNum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hotNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->id_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIsDmzj()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isDmzj_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIsHideChapter()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isHideChapter_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIsLock()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isLock_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIsNeedLogin()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isNeedLogin_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearIslong()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->islong_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateChapterId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdateChapterName()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearLastUpdatetime()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdatetime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public clearStatus()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearSubscribeNum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->subscribeNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTitle()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTypes()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearUid()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->uid_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1
.end method

.method public getAuthorsBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public getAuthorsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getAuthorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorsOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1
.end method

.method public getAuthorsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChapters(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    return-object p1
.end method

.method public getChaptersBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public getChaptersBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChaptersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getChaptersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChaptersOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;

    return-object p1
.end method

.method public getChaptersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComicPy()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getComicPyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCopyright()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->copyright_:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->direction_:I

    return v0
.end method

.method public getFirstLetter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstLetterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHidden()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hidden_:I

    return v0
.end method

.method public getHitNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hitNum_:I

    return v0
.end method

.method public getHotNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hotNum_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->id_:I

    return v0
.end method

.method public getIsDmzj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isDmzj_:I

    return v0
.end method

.method public getIsHideChapter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isHideChapter_:I

    return v0
.end method

.method public getIsLock()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isLock_:I

    return v0
.end method

.method public getIsNeedLogin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isNeedLogin_:I

    return v0
.end method

.method public getIslong()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->islong_:I

    return v0
.end method

.method public getLastUpdateChapterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    return v0
.end method

.method public getLastUpdateChapterName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateChapterNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastUpdatetime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdatetime_:J

    return-wide v0
.end method

.method public getStatus(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1
.end method

.method public getStatusBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public getStatusBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1
.end method

.method public getStatusOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->subscribeNum_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTypes(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    return-object p1
.end method

.method public getTypesBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;

    return-object p1
.end method

.method public getTypesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypesOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;

    return-object p1
.end method

.method public getTypesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->uid_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
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

    .line 133
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 134
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDirection()I

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setDirection(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIslong()I

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIslong()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setIslong(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsDmzj()I

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsDmzj()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setIsDmzj(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2500(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdatetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdatetime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setLastUpdatetime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdateChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getCopyright()I

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getCopyright()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setCopyright(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getFirstLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 36
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$2900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getComicPy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 39
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3000(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 41
    :cond_c
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHidden()I

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHidden()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setHidden(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 43
    :cond_d
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHotNum()I

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHotNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setHotNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 45
    :cond_e
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHitNum()I

    move-result v0

    if-eqz v0, :cond_f

    .line 46
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getHitNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setHitNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 47
    :cond_f
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getUid()I

    move-result v0

    if-eqz v0, :cond_10

    .line 48
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setUid(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 49
    :cond_10
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsLock()I

    move-result v0

    if-eqz v0, :cond_11

    .line 50
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsLock()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setIsLock(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 51
    :cond_11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v0

    if-eqz v0, :cond_12

    .line 52
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getLastUpdateChapterId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setLastUpdateChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 53
    :cond_12
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 54
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 55
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 56
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 58
    :cond_13
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 59
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_2

    .line 61
    :cond_14
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 62
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 63
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 64
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    .line 65
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    .line 66
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 67
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 68
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getTypesFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_1

    :cond_15
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    goto :goto_2

    .line 69
    :cond_16
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 70
    :cond_17
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_19

    .line 71
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 72
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 73
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 74
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_3

    .line 75
    :cond_18
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 76
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_5

    .line 78
    :cond_19
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 79
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 80
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 81
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    .line 82
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    .line 83
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 84
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4500()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 85
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getStatusFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_4

    :cond_1a
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    goto :goto_5

    .line 86
    :cond_1b
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 87
    :cond_1c
    :goto_5
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1e

    .line 88
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 89
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 90
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 91
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 92
    :cond_1d
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 93
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_8

    .line 95
    :cond_1e
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 96
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 97
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 98
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    .line 99
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    .line 100
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 101
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4600()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getAuthorsFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_7

    :cond_1f
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    goto :goto_8

    .line 103
    :cond_20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$3900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 104
    :cond_21
    :goto_8
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getSubscribeNum()I

    move-result v0

    if-eqz v0, :cond_22

    .line 105
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getSubscribeNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setSubscribeNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 106
    :cond_22
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_24

    .line 107
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 108
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 109
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 110
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_9

    .line 111
    :cond_23
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 112
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_a

    .line 114
    :cond_24
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 115
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 116
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 117
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    .line 118
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    .line 119
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->bitField0_:I

    .line 120
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 121
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->getChaptersFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v1

    :cond_25
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    goto :goto_a

    .line 122
    :cond_26
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 123
    :cond_27
    :goto_a
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsNeedLogin()I

    move-result v0

    if-eqz v0, :cond_28

    .line 124
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsNeedLogin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setIsNeedLogin(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 125
    :cond_28
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsHideChapter()I

    move-result v0

    if-eqz v0, :cond_29

    .line 126
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->getIsHideChapter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setIsHideChapter(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 127
    :cond_29
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$4800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public removeAuthors(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

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

.method public removeChapters(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

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

.method public removeStatus(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

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

.method public removeTypes(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

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

.method public setAuthors(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setAuthors(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authorsBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureAuthorsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->authors_:Ljava/util/List;

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

.method public setChapters(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setChapters(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chaptersBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureChaptersIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->chapters_:Ljava/util/List;

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

.method public setComicPy(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setComicPyBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5500(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->comicPy_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCopyright(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->copyright_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCover(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCoverBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5100(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->cover_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5200(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->description_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setDirection(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->direction_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setFirstLetter(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setFirstLetterBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5400(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->firstLetter_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setHidden(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hidden_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setHitNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hitNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setHotNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->hotNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->id_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIsDmzj(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isDmzj_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIsHideChapter(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isHideChapter_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIsLock(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isLock_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIsNeedLogin(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->isNeedLogin_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setIslong(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->islong_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterId(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterId_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterName(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateChapterNameBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5300(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdateChapterName_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setLastUpdatetime(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->lastUpdatetime_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setStatus(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setStatus(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->statusBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureStatusIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->status_:Ljava/util/List;

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

.method public setSubscribeNum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->subscribeNum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse;->access$5000(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTypes(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setTypes(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailTypeItemResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->typesBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->ensureTypesIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->types_:Ljava/util/List;

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

.method public setUid(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->uid_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponse$Builder;

    return-object p1
.end method
