.class Lcom/google/common/collect/b1$if;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b1;->valueIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public do:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/collect/r0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/b1;

.field public if:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b1$if;->for:Lcom/google/common/collect/b1;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/b1;->map:Lcom/google/common/collect/x0;

    invoke-virtual {p1}, Lcom/google/common/collect/x0;->values()Lcom/google/common/collect/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b1$if;->do:Ljava/util/Iterator;

    .line 3
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b1$if;->if:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$if;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/b1$if;->do:Ljava/util/Iterator;

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

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$if;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b1$if;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/r0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b1$if;->if:Ljava/util/Iterator;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b1$if;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
