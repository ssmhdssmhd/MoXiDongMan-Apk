.class public Landroid/support/v4/m30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/math/ec/new;

.field private final for:I

.field private final if:Lorg/bouncycastle/math/ec/new;

.field private final new:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v4/m30;->for:I

    iput-object p2, p0, Landroid/support/v4/m30;->do:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/m30;->if:Lorg/bouncycastle/math/ec/new;

    iput p4, p0, Landroid/support/v4/m30;->new:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "points need to be on the same curve"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static else(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m30;->do:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v0

    return v0
.end method

.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/m30;->new:I

    return v0
.end method

.method public for()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m30;->do:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public if()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/m30;->do:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v0

    iget v1, p0, Landroid/support/v4/m30;->new:I

    invoke-static {v1}, Landroid/support/v4/m30;->else(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public new()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m30;->if:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/m30;->for:I

    return v0
.end method
