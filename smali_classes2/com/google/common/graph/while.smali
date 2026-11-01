.class public final Lcom/google/common/graph/while;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/fm0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/while$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/graph/while$if;

.field private final if:Ljava/util/Comparator;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V
    .locals 3
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/while$if;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/while$if;

    iput-object v0, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    .line 3
    iput-object p2, p0, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    .line 4
    sget-object v0, Lcom/google/common/graph/while$if;->SORTED:Lcom/google/common/graph/while$if;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Landroid/support/v4/af1;->t(Z)V

    return-void
.end method

.method public static case(Ljava/util/Comparator;)Lcom/google/common/graph/while;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TS;>;)",
            "Lcom/google/common/graph/while<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/while;

    sget-object v1, Lcom/google/common/graph/while$if;->SORTED:Lcom/google/common/graph/while$if;

    invoke-direct {v0, v1, p0}, Lcom/google/common/graph/while;-><init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static else()Lcom/google/common/graph/while;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/while<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/while;

    sget-object v1, Lcom/google/common/graph/while$if;->STABLE:Lcom/google/common/graph/while$if;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/while;-><init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static new()Lcom/google/common/graph/while;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/while<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/while;

    sget-object v1, Lcom/google/common/graph/while$if;->INSERTION:Lcom/google/common/graph/while$if;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/while;-><init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static this()Lcom/google/common/graph/while;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/while<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/while;

    sget-object v1, Lcom/google/common/graph/while$if;->UNORDERED:Lcom/google/common/graph/while$if;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/while;-><init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static try()Lcom/google/common/graph/while;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "-TS;>;>()",
            "Lcom/google/common/graph/while<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/while;

    sget-object v1, Lcom/google/common/graph/while$if;->SORTED:Lcom/google/common/graph/while$if;

    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/while;-><init>(Lcom/google/common/graph/while$if;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public do()Lcom/google/common/graph/while;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:TT;>()",
            "Lcom/google/common/graph/while<",
            "TT1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/graph/while;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/graph/while;

    .line 3
    iget-object v1, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    iget-object v3, p1, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    iget-object p1, p1, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    invoke-static {v1, p1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TT;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/graph/while$do;->do:[I

    iget-object v1, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/while;->if()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->t(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Maps;->r(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/Maps;->n(I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public goto()Lcom/google/common/graph/while$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/throw;->if([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public if()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ordering does not define a comparator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/super;->for(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/while;->do:Lcom/google/common/graph/while$if;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/graph/while;->if:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    const-string v2, "comparator"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
