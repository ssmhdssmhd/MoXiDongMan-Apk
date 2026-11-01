.class final Lcom/google/common/collect/x0$new;
.super Lcom/google/common/collect/x0$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x0$for<",
        "TK;",
        "Lcom/google/common/collect/g1<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/x0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-direct {p0}, Lcom/google/common/collect/x0$for;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/x0$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$new;-><init>(Lcom/google/common/collect/x0;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createKeySet()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->keySet()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public entryIterator()Landroid/support/v4/ac2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/g1<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->entrySet()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/x0$new$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/x0$new$do;-><init>(Lcom/google/common/collect/x0$new;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/g1;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/g1<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/g1;->of(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x0$new;->get(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHashCodeFast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->isHashCodeFast()Z

    move-result v0

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new;->this$0:Lcom/google/common/collect/x0;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
