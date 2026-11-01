.class public final Lcom/google/common/collect/n2;
.super Lcom/google/common/collect/o2;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n2$for;,
        Lcom/google/common/collect/n2$new;,
        Lcom/google/common/collect/n2$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/o2;",
        "Lcom/google/common/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final lowerBound:Lcom/google/common/collect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final upperBound:Lcom/google/common/collect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)V

    sput-object v0, Lcom/google/common/collect/n2;->do:Lcom/google/common/collect/n2;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/a<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/o2;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a;

    iput-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a;

    iput-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 6
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    if-eq p2, v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->if(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static all()Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2;->do:Lcom/google/common/collect/n2;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/a<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/n2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)V

    return-object v0
.end method

.method private static do(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public static downTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2$do;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/n2;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/n2;->greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static encloseAll(Ljava/lang/Iterable;)Lcom/google/common/collect/n2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/n2;->do(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p0, v0}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 11
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/k2;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 12
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/common/collect/k2;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method private static if(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "*>;",
            "Lcom/google/common/collect/a<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/a;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/common/collect/a;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static lowerBoundFn()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/base/Function<",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2$if;->do:Lcom/google/common/collect/n2$if;

    return-object v0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Comparable;Lcom/google/common/collect/static;Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/static;",
            "TC;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/static;->OPEN:Lcom/google/common/collect/static;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p0

    :goto_0
    if-ne p3, v0, :cond_1

    .line 5
    invoke-static {p2}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/a;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object p1

    .line 6
    :goto_1
    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static rangeLexOrdering()Lcom/google/common/collect/k2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/k2<",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2$for;->INSTANCE:Lcom/google/common/collect/k2;

    return-object v0
.end method

.method public static singleton(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p0}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static upTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2$do;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/n2;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/n2;->lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method public static upperBoundFn()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/base/Function<",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/n2$new;->do:Lcom/google/common/collect/n2$new;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->apply(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public canonical(Lcom/google/common/collect/f;)Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->canonical(Lcom/google/common/collect/f;)Lcom/google/common/collect/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/a;->canonical(Lcom/google/common/collect/f;)Lcom/google/common/collect/a;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    if-ne p1, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/r1;->private(Ljava/lang/Iterable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/n2;->do(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_3

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 7
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_5
    return v1
.end method

.method public encloses(Lcom/google/common/collect/n2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/n2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/n2;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public gap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p0

    .line 2
    :goto_2
    iget-object v0, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object p1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public hasLowerBound()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpperBound()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1}, Lcom/google/common/collect/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v2, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    if-ltz v1, :cond_1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    :goto_0
    if-gtz v1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 5
    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public isConnected(Lcom/google/common/collect/n2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lowerBoundType()Lcom/google/common/collect/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->typeAsLowerBound()Lcom/google/common/collect/static;

    move-result-object v0

    return-object v0
.end method

.method public lowerEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/n2;->do:Lcom/google/common/collect/n2;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public span(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v2, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    if-gtz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    :goto_0
    if-ltz v1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 5
    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->if(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperBoundType()Lcom/google/common/collect/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->typeAsUpperBound()Lcom/google/common/collect/static;

    move-result-object v0

    return-object v0
.end method

.method public upperEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
