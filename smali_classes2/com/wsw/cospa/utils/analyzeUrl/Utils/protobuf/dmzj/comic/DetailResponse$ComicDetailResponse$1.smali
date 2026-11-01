.class Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse$1;
.super Lcom/google/protobuf/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/do<",
        "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/do;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;

    move-result-object p1

    return-object p1
.end method
