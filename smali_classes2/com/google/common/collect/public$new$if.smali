.class Lcom/google/common/collect/public$new$if;
.super Lcom/google/common/collect/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/public$new;->do()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/if<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/public$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/public$new;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/public$new$if;->for:Lcom/google/common/collect/public$new;

    invoke-direct {p0, p2}, Lcom/google/common/collect/if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/public$new$if;->if(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$new$if;->for:Lcom/google/common/collect/public$new;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/public$new;->if(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
