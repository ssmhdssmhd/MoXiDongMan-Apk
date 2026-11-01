.class Lcom/google/common/collect/c3$class$do;
.super Lcom/google/common/collect/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$class;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/if<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/c3$class;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$class;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c3$class$do;->for:Lcom/google/common/collect/c3$class;

    invoke-direct {p0, p2}, Lcom/google/common/collect/if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$class$do;->if(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c3$final;

    iget-object v1, p0, Lcom/google/common/collect/c3$class$do;->for:Lcom/google/common/collect/c3$class;

    iget-object v1, v1, Lcom/google/common/collect/c3$class;->do:Lcom/google/common/collect/x0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/c3$final;-><init>(Lcom/google/common/collect/x0;I)V

    return-object v0
.end method
