.class Lcom/google/common/collect/b1$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b1;->entryIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;+",
            "Lcom/google/common/collect/r0<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public for:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/b1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b1$do;->new:Lcom/google/common/collect/b1;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/b1;->map:Lcom/google/common/collect/x0;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/x0;->entrySet()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b1$do;->do:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/b1$do;->if:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b1$do;->for:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b1$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/b1$do;->if:Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/r0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b1$do;->for:Ljava/util/Iterator;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b1$do;->if:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/b1$do;->for:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/b1$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b1$do;->do()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
