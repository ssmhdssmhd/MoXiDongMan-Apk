.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;",
        ">;",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chapterId_:J

.field private chapterOrder_:I

.field private comicId_:J

.field private commentCount_:I

.field private direction_:I

.field private pageUrlHd_:Lcom/google/protobuf/LazyStringList;

.field private pageUrl_:Lcom/google/protobuf/LazyStringList;

.field private picnum_:I

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 11
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 12
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;-><init>()V

    return-void
.end method

.method private ensurePageUrlHdIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/s;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePageUrlIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/s;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$1700()Z

    return-void
.end method


# virtual methods
.method public addAllPageUrl(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addAllPageUrlHd(Ljava/lang/Iterable;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlHdIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addPageUrl(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addPageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$3100(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addPageUrlHd(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlHdIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public addPageUrlHdBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$3200(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlHdIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 3

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$1;)V

    .line 4
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterId_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$1902(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;J)J

    .line 5
    iget-wide v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->comicId_:J

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2002(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;J)J

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2102(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterOrder_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2202(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I

    .line 8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->direction_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2302(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I

    .line 9
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 11
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2402(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 13
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->picnum_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2502(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I

    .line 14
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 16
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 18
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->commentCount_:I

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterId_:J

    .line 7
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->comicId_:J

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterOrder_:I

    .line 10
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->direction_:I

    .line 11
    sget-object v1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 12
    iget v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 13
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->picnum_:I

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v1, v2, -0x3

    .line 15
    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 16
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->commentCount_:I

    return-object p0
.end method

.method public clearChapterId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterId_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearChapterOrder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterOrder_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearComicId()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->comicId_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearCommentCount()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->commentCount_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearDirection()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->direction_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public clearPageUrl()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearPageUrlHd()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 2
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearPicnum()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->picnum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public clearTitle()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

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
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->clone()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChapterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterId_:J

    return-wide v0
.end method

.method public getChapterOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterOrder_:I

    return v0
.end method

.method public getComicId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->comicId_:J

    return-wide v0
.end method

.method public getCommentCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->commentCount_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass;->access$1300()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->direction_:I

    return v0
.end method

.method public getPageUrl(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPageUrlBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPageUrlCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageUrlHd(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPageUrlHdBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPageUrlHdCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageUrlHdList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->getPageUrlHdList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrlList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageUrlList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->getPageUrlList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPicnum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->picnum_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
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

    .line 46
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 47
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setChapterId(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getComicId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getComicId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setComicId(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2100(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterOrder()I

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getChapterOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setChapterOrder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDirection()I

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setDirection(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 25
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlIsMutable()V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2400(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPicnum()I

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getPicnum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setPicnum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 31
    :cond_8
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    .line 34
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->bitField0_:I

    goto :goto_1

    .line 35
    :cond_9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlHdIsMutable()V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2600(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 38
    :cond_a
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getCommentCount()I

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setCommentCount(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 40
    :cond_b
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$2800(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setChapterId(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterId_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setChapterOrder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->chapterOrder_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setComicId(J)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->comicId_:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setCommentCount(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->commentCount_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setDirection(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->direction_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setPageUrl(ILjava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setPageUrlHd(ILjava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->ensurePageUrlHdIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->pageUrlHd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setPicnum(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->picnum_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse;->access$3000(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->title_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/t1;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponse$Builder;

    return-object p1
.end method
