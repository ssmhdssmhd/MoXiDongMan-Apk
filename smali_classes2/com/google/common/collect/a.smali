.class abstract Lcom/google/common/collect/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/a$for;,
        Lcom/google/common/collect/a$try;,
        Lcom/google/common/collect/a$if;,
        Lcom/google/common/collect/a$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/a<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final endpoint:Ljava/lang/Comparable;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/a;->endpoint:Ljava/lang/Comparable;

    return-void
.end method

.method public static aboveAll()Lcom/google/common/collect/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/a$if;->access$100()Lcom/google/common/collect/a$if;

    move-result-object v0

    return-object v0
.end method

.method public static aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/a$for;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a$for;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static belowAll()Lcom/google/common/collect/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/a$new;->access$000()Lcom/google/common/collect/a$new;

    move-result-object v0

    return-object v0
.end method

.method public static belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/a$try;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a$try;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public canonical(Lcom/google/common/collect/f;)Lcom/google/common/collect/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public compareTo(Lcom/google/common/collect/a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TC;>;)I"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/a;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/a;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 5
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/a$for;

    instance-of p1, p1, Lcom/google/common/collect/a$for;

    invoke-static {v0, p1}, Lcom/google/common/primitives/do;->new(ZZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result p1

    return p1
.end method

.method public abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method public abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method public endpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/a;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract greatestValueBelow(Lcom/google/common/collect/f;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract leastValueAbove(Lcom/google/common/collect/f;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract typeAsLowerBound()Lcom/google/common/collect/static;
.end method

.method public abstract typeAsUpperBound()Lcom/google/common/collect/static;
.end method

.method public abstract withLowerBoundType(Lcom/google/common/collect/static;Lcom/google/common/collect/f;)Lcom/google/common/collect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/static;",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract withUpperBoundType(Lcom/google/common/collect/static;Lcom/google/common/collect/f;)Lcom/google/common/collect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/static;",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/a<",
            "TC;>;"
        }
    .end annotation
.end method
