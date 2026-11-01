.class abstract Lcom/google/common/graph/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Z

.field public for:Lcom/google/common/graph/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/while<",
            "TN;>;"
        }
    .end annotation
.end field

.field public if:Z

.field public new:Lcom/google/common/graph/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/while<",
            "TN;>;"
        }
    .end annotation
.end field

.field public try:Lcom/google/common/base/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/while<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/common/graph/new;->if:Z

    .line 3
    invoke-static {}, Lcom/google/common/graph/while;->new()Lcom/google/common/graph/while;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    .line 4
    invoke-static {}, Lcom/google/common/graph/while;->this()Lcom/google/common/graph/while;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/new;->new:Lcom/google/common/graph/while;

    .line 5
    invoke-static {}, Lcom/google/common/base/while;->absent()Lcom/google/common/base/while;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/new;->try:Lcom/google/common/base/while;

    .line 6
    iput-boolean p1, p0, Lcom/google/common/graph/new;->do:Z

    return-void
.end method
