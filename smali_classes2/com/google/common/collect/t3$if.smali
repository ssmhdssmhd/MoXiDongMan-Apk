.class final Lcom/google/common/collect/t3$if;
.super Lcom/google/common/collect/Maps$extends;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$extends<",
        "Lcom/google/common/collect/n2<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lcom/google/common/collect/t3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t3;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/t3$for<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t3$if;->if:Lcom/google/common/collect/t3;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$extends;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/t3$if;->do:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t3$if;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public do()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$if;->do:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/n2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/n2;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/t3$if;->if:Lcom/google/common/collect/t3;

    invoke-static {v0}, Lcom/google/common/collect/t3;->do(Lcom/google/common/collect/t3;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$if;->if:Lcom/google/common/collect/t3;

    invoke-static {v0}, Lcom/google/common/collect/t3;->do(Lcom/google/common/collect/t3;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0
.end method
