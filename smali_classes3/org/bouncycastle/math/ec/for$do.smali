.class public abstract Lorg/bouncycastle/math/ec/for$do;
.super Lorg/bouncycastle/math/ec/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for;-><init>()V

    return-void
.end method


# virtual methods
.method public switch()Lorg/bouncycastle/math/ec/for;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->else()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move-object v3, p0

    move-object v4, v3

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Half-trace only defined for odd m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public throws()I
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->else()I

    move-result v0

    const/4 v1, 0x1

    move-object v3, p0

    move-object v4, v3

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error in trace calculation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
