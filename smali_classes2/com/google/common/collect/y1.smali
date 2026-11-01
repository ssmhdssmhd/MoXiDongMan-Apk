.class public final Lcom/google/common/collect/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/y1$do;
    }
.end annotation


# static fields
.field private static final else:I = 0x10

.field private static final goto:I = 0x4

.field public static final this:I = -0x1


# instance fields
.field public case:Lcom/google/common/base/this;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public do:Z

.field public for:I

.field public if:I

.field public new:Lcom/google/common/collect/MapMakerInternalMap$super;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public try:Lcom/google/common/collect/MapMakerInternalMap$super;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/common/collect/y1;->if:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/y1;->for:I

    return-void
.end method


# virtual methods
.method public break(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->new:Lcom/google/common/collect/MapMakerInternalMap$super;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$super;

    iput-object v0, p0, Lcom/google/common/collect/y1;->new:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 3
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/collect/y1;->do:Z

    :cond_1
    return-object p0
.end method

.method public case()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->try:Lcom/google/common/collect/MapMakerInternalMap$super;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method

.method public catch(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->try:Lcom/google/common/collect/MapMakerInternalMap$super;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$super;

    iput-object v0, p0, Lcom/google/common/collect/y1;->try:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 3
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/collect/y1;->do:Z

    :cond_1
    return-object p0
.end method

.method public class()Lcom/google/common/collect/y1;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/y1;->break(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/common/collect/y1;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/y1;->catch(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;

    move-result-object v0

    return-object v0
.end method

.method public do(I)Lcom/google/common/collect/y1;
    .locals 5
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/y1;->for:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Landroid/support/v4/af1;->A(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/collect/y1;->for:I

    return-object p0
.end method

.method public else(I)Lcom/google/common/collect/y1;
    .locals 5
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/y1;->if:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Landroid/support/v4/af1;->A(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/collect/y1;->if:I

    return-object p0
.end method

.method public for()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/y1;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public goto(Lcom/google/common/base/this;)Lcom/google/common/collect/y1;
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/y1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->case:Lcom/google/common/base/this;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/this;

    iput-object p1, p0, Lcom/google/common/collect/y1;->case:Lcom/google/common/base/this;

    .line 3
    iput-boolean v1, p0, Lcom/google/common/collect/y1;->do:Z

    return-object p0
.end method

.method public if()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/y1;->for:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public new()Lcom/google/common/base/this;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->case:Lcom/google/common/base/this;

    invoke-virtual {p0}, Lcom/google/common/collect/y1;->try()Lcom/google/common/collect/MapMakerInternalMap$super;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$super;->defaultEquivalence()Lcom/google/common/base/this;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/this;

    return-object v0
.end method

.method public this()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/y1;->do:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/y1;->for()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/y1;->if()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->create(Lcom/google/common/collect/y1;)Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/super;->for(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/common/collect/y1;->if:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/super$if;->new(Ljava/lang/String;I)Lcom/google/common/base/super$if;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/common/collect/y1;->for:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->new(Ljava/lang/String;I)Lcom/google/common/base/super$if;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/y1;->new:Lcom/google/common/collect/MapMakerInternalMap$super;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/y1;->try:Lcom/google/common/collect/MapMakerInternalMap$super;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/y1;->case:Lcom/google/common/base/this;

    if-eqz v1, :cond_4

    const-string v1, "keyEquivalence"

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/common/base/super$if;->throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y1;->new:Lcom/google/common/collect/MapMakerInternalMap$super;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method
