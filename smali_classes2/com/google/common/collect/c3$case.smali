.class final Lcom/google/common/collect/c3$case;
.super Landroid/support/v4/qd0;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/qd0<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient do:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/g1<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient if:Lcom/google/common/collect/throws;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/throws<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/throws;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/g1<",
            "TE;>;>;",
            "Lcom/google/common/collect/throws<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qd0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c3$case;->do:Lcom/google/common/collect/v0;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/c3$case;->if:Lcom/google/common/collect/throws;

    return-void
.end method

.method public static do(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/v0$do;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v0$do;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object p0

    .line 8
    new-instance v0, Lcom/google/common/collect/c3$case$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c3$case$do;-><init>(Lcom/google/common/collect/v0;)V

    .line 9
    new-instance v1, Lcom/google/common/collect/c3$case;

    new-instance v2, Lcom/google/common/collect/throws;

    invoke-direct {v2, v0}, Lcom/google/common/collect/throws;-><init>(Lcom/google/common/collect/v0;)V

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/c3$case;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/throws;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c3$case;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c3$case;->if:Lcom/google/common/collect/throws;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/c3$case;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/c3$case;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/c3$case;->do:Lcom/google/common/collect/v0;

    iget-object p1, p1, Lcom/google/common/collect/c3$case;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/qd0;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/c3$case;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/c3$case;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v2}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/qd0;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    mul-int v4, v4, v3

    add-int/2addr v1, v4

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
