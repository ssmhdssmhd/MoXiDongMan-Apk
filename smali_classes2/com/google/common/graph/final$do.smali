.class Lcom/google/common/graph/final$do;
.super Lcom/google/common/graph/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/final;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/strictfp<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/lang/Object;

.field public final synthetic new:Lcom/google/common/graph/final;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/final;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/final$do;->new:Lcom/google/common/graph/final;

    iput-object p4, p0, Lcom/google/common/graph/final$do;->for:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/strictfp;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/final$do;->new:Lcom/google/common/graph/final;

    invoke-static {v0}, Lcom/google/common/graph/final;->if(Lcom/google/common/graph/final;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/final$do;->for:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
