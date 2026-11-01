.class public Landroid/support/v4/c50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/math/ec/new;

.field private final if:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c50;->do:Lorg/bouncycastle/math/ec/new;

    iput-object p2, p0, Landroid/support/v4/c50;->if:Lorg/bouncycastle/math/ec/new;

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/c50;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/c50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/c50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/new;->try(Lorg/bouncycastle/math/ec/new;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/c50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/c50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/new;->try(Lorg/bouncycastle/math/ec/new;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/c50;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/c50;

    invoke-virtual {p0, p1}, Landroid/support/v4/c50;->do(Landroid/support/v4/c50;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public for()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c50;->if:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/c50;->do:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/c50;->if:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c50;->do:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method
