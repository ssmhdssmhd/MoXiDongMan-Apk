.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;",
        ">;",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dataBuilder_:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureDataIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getDataFieldBuilder()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$6900()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

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

.method public addData(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addData(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

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

.method public addData(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public addData(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

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

.method public addDataBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;

    return-object v0
.end method

.method public addDataBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    .locals 2

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 6
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public clearData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public clearTitle()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    return-object p1
.end method

.method public getDataBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;

    return-object p1
.end method

.method public getDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;

    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$6900()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse;->access$7000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
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

    .line 37
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    .line 38
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7500(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_3

    .line 15
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    .line 27
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->bitField0_:I

    .line 28
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7700()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->getDataFieldBuilder()Lcom/google/protobuf/v0;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    goto :goto_1

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 31
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$7800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public removeData(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

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

.method public setData(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public setData(ILcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->dataBuilder_:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->data_:Ljava/util/List;

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

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse;->access$8000(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->title_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailChapterResponse$Builder;

    return-object p1
.end method
