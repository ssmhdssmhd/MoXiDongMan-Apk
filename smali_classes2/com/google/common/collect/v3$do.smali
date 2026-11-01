.class final Lcom/google/common/collect/v3$do;
.super Lcom/google/common/collect/v3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v3;->else(Lcom/google/common/base/Function;)Lcom/google/common/collect/v3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/base/Function;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/v3$do;->do:Lcom/google/common/base/Function;

    invoke-direct {p0}, Lcom/google/common/collect/v3;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v3$do;->do:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method
