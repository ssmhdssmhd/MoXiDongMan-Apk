.class public final Lcom/google/common/collect/f1;
.super Lcom/google/common/collect/catch;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f1$case;,
        Lcom/google/common/collect/f1$new;,
        Lcom/google/common/collect/f1$for;,
        Lcom/google/common/collect/f1$if;,
        Lcom/google/common/collect/f1$try;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/catch<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final for:Lcom/google/common/collect/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f1<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final new:Lcom/google/common/collect/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f1<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final transient do:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient if:Lcom/google/common/collect/f1;
    .annotation runtime Landroid/support/v4/fs0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/f1;

    .line 2
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    sput-object v0, Lcom/google/common/collect/f1;->for:Lcom/google/common/collect/f1;

    .line 3
    new-instance v0, Lcom/google/common/collect/f1;

    .line 4
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    sput-object v0, Lcom/google/common/collect/f1;->new:Lcom/google/common/collect/f1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/catch;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;",
            "Lcom/google/common/collect/f1<",
            "TC;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/catch;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 5
    iput-object p2, p0, Lcom/google/common/collect/f1;->if:Lcom/google/common/collect/f1;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    return-object p0
.end method

.method public static all()Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/f1;->new:Lcom/google/common/collect/f1;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/f1$new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/f1$new<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/f1$new;

    invoke-direct {v0}, Lcom/google/common/collect/f1$new;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/f1;->of()Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/google/common/collect/f1;->all()Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/f1;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/f1;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/f1;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Lcom/google/common/collect/f1;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/v0;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/v0;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/common/collect/f1$new;

    invoke-direct {v0}, Lcom/google/common/collect/f1$new;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/f1$new;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/f1$new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/f1$new;->new()Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0
.end method

.method private do(Lcom/google/common/collect/n2;)Lcom/google/common/collect/v0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->span()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 6
    invoke-static {}, Lcom/google/common/collect/n2;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    sget-object v3, Lcom/google/common/collect/g3$for;->FIRST_AFTER:Lcom/google/common/collect/g3$for;

    sget-object v4, Lcom/google/common/collect/g3$if;->NEXT_HIGHER:Lcom/google/common/collect/g3$if;

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 10
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    sget-object v4, Lcom/google/common/collect/g3$for;->FIRST_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v5, Lcom/google/common/collect/g3$if;->NEXT_HIGHER:Lcom/google/common/collect/g3$if;

    .line 11
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v1

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 13
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance v2, Lcom/google/common/collect/f1$do;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/f1$do;-><init>(Lcom/google/common/collect/f1;IILcom/google/common/collect/n2;)V

    return-object v2

    .line 15
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public static of()Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/f1;->for:Lcom/google/common/collect/f1;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/n2;)Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/collect/f1;->of()Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/google/common/collect/f1;->all()Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/common/collect/f1;

    invoke-static {p0}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/f1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/u3;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/u3;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/f1;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asDescendingSetOfRanges()Lcom/google/common/collect/g1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/collect/x2;

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Lcom/google/common/collect/v0;->reverse()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/n2;->rangeLexOrdering()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/x2;-><init>(Lcom/google/common/collect/v0;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->asDescendingSetOfRanges()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lcom/google/common/collect/g1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/collect/x2;

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-static {}, Lcom/google/common/collect/n2;->rangeLexOrdering()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/x2;-><init>(Lcom/google/common/collect/v0;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->asRanges()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lcom/google/common/collect/f;)Lcom/google/common/collect/m1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/m1;->of()Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->span()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->canonical(Lcom/google/common/collect/f;)Lcom/google/common/collect/n2;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/f;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/collect/f1$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/f1$if;-><init>(Lcom/google/common/collect/f1;Lcom/google/common/collect/f;)V

    return-object v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/catch;->clear()V

    return-void
.end method

.method public bridge synthetic complement()Lcom/google/common/collect/RangeSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->complement()Lcom/google/common/collect/f1;

    move-result-object v0

    return-object v0
.end method

.method public complement()Lcom/google/common/collect/f1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f1;->if:Lcom/google/common/collect/f1;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/common/collect/f1;->all()Lcom/google/common/collect/f1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f1;->if:Lcom/google/common/collect/f1;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/google/common/collect/f1;->of()Lcom/google/common/collect/f1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f1;->if:Lcom/google/common/collect/f1;

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/common/collect/f1$try;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f1$try;-><init>(Lcom/google/common/collect/f1;)V

    .line 8
    new-instance v1, Lcom/google/common/collect/f1;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/f1;)V

    iput-object v1, p0, Lcom/google/common/collect/f1;->if:Lcom/google/common/collect/f1;

    return-object v1
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/catch;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public difference(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/u3;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/u3;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/f1;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method

.method public encloses(Lcom/google/common/collect/n2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 3
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v5, Lcom/google/common/collect/g3$if;->NEXT_LOWER:Lcom/google/common/collect/g3$if;

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/g3;->if(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/catch;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/catch;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/catch;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersection(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/u3;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/u3;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/f1;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method

.method public intersects(Lcom/google/common/collect/n2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 3
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v5, Lcom/google/common/collect/g3$if;->NEXT_HIGHER:Lcom/google/common/collect/g3$if;

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/g3;->if(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-lez v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    sub-int/2addr v0, v2

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v5, Lcom/google/common/collect/g3$if;->NEXT_LOWER:Lcom/google/common/collect/g3$if;

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/g3;->if(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public remove(Lcom/google/common/collect/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lcom/google/common/collect/n2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1;->subRangeSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method

.method public subRangeSet(Lcom/google/common/collect/n2;)Lcom/google/common/collect/f1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->span()Lcom/google/common/collect/n2;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/common/collect/f1;

    invoke-direct {p0, p1}, Lcom/google/common/collect/f1;->do(Lcom/google/common/collect/n2;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/f1;-><init>(Lcom/google/common/collect/v0;)V

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/common/collect/f1;->of()Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method

.method public union(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/f1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f1;->asRanges()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/r1;->case(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f1;->unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/f1;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/f1$case;

    iget-object v1, p0, Lcom/google/common/collect/f1;->do:Lcom/google/common/collect/v0;

    invoke-direct {v0, v1}, Lcom/google/common/collect/f1$case;-><init>(Lcom/google/common/collect/v0;)V

    return-object v0
.end method
