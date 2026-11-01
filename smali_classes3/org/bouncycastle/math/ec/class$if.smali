.class final Lorg/bouncycastle/math/ec/class$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/class;->final(Lorg/bouncycastle/math/ec/new;IZ)Landroid/support/v4/ff2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lorg/bouncycastle/math/ec/new;

.field public final synthetic if:Z

.field public final synthetic new:Lorg/bouncycastle/math/ec/if;


# direct methods
.method public constructor <init>(IZLorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/if;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/math/ec/class$if;->do:I

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/class$if;->if:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/class$if;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Landroid/support/v4/ff2;IZ)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/ff2;->do()[Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/math/ec/class$if;->if([Lorg/bouncycastle/math/ec/new;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/ff2;->if()[Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/math/ec/class$if;->if([Lorg/bouncycastle/math/ec/new;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private if([Lorg/bouncycastle/math/ec/new;I)Z
    .locals 0

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 11

    instance-of v0, p1, Landroid/support/v4/ff2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ff2;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/math/ec/class$if;->do:I

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x1

    shl-int v0, v4, v0

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/class$if;->if:Z

    invoke-direct {p0, p1, v0, v5}, Lorg/bouncycastle/math/ec/class$if;->do(Landroid/support/v4/ff2;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/ff2;->do()[Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/ff2;->if()[Lorg/bouncycastle/math/ec/new;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v4/ff2;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    move-object v5, p1

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_3

    invoke-static {}, Lorg/bouncycastle/math/ec/class;->do()[Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    array-length v7, v5

    :goto_2
    if-ge v7, v0, :cond_b

    invoke-static {v5, v0}, Lorg/bouncycastle/math/ec/class;->if([Lorg/bouncycastle/math/ec/new;I)[Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    if-ne v0, v4, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/math/ec/class$if;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    aput-object v1, v5, v3

    goto/16 :goto_7

    :cond_4
    if-nez v7, :cond_5

    iget-object v8, p0, Lorg/bouncycastle/math/ec/class$if;->for:Lorg/bouncycastle/math/ec/new;

    aput-object v8, v5, v3

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v7

    :goto_3
    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/math/ec/class$if;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/new;->implements()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    aput-object v2, v5, v4

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v4, v8, -0x1

    aget-object v4, v5, v4

    if-nez p1, :cond_8

    aget-object p1, v5, v3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    invoke-static {v9}, Lorg/bouncycastle/math/ec/do;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_8

    iget-object v9, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v9

    if-eq v9, v2, :cond_7

    const/4 v2, 0x3

    if-eq v9, v2, :cond_7

    const/4 v2, 0x4

    if-eq v9, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/new;->public(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/bouncycastle/math/ec/if;->goto(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v10

    invoke-virtual {v4, v9}, Lorg/bouncycastle/math/ec/new;->interface(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/new;->protected(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    if-nez v7, :cond_9

    aput-object v4, v5, v3

    goto :goto_5

    :cond_8
    :goto_4
    move-object v2, p1

    :cond_9
    :goto_5
    if-ge v8, v0, :cond_a

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    aput-object v4, v5, v8

    move v8, v9

    goto :goto_5

    :cond_a
    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/math/ec/class$if;->new:Lorg/bouncycastle/math/ec/if;

    sub-int v4, v0, v7

    invoke-virtual {v2, v5, v7, v4, v1}, Lorg/bouncycastle/math/ec/if;->continue([Lorg/bouncycastle/math/ec/new;IILorg/bouncycastle/math/ec/for;)V

    :cond_b
    :goto_7
    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/class$if;->if:Z

    if-eqz v1, :cond_e

    if-nez v6, :cond_c

    new-array v1, v0, [Lorg/bouncycastle/math/ec/new;

    :goto_8
    move-object v6, v1

    goto :goto_9

    :cond_c
    array-length v3, v6

    if-ge v3, v0, :cond_d

    invoke-static {v6, v0}, Lorg/bouncycastle/math/ec/class;->if([Lorg/bouncycastle/math/ec/new;I)[Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    goto :goto_8

    :cond_d
    :goto_9
    if-ge v3, v0, :cond_e

    aget-object v1, v5, v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    aput-object v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    new-instance v0, Landroid/support/v4/ff2;

    invoke-direct {v0}, Landroid/support/v4/ff2;-><init>()V

    invoke-virtual {v0, v5}, Landroid/support/v4/ff2;->new([Lorg/bouncycastle/math/ec/new;)V

    invoke-virtual {v0, v6}, Landroid/support/v4/ff2;->try([Lorg/bouncycastle/math/ec/new;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/ff2;->case(Lorg/bouncycastle/math/ec/new;)V

    return-object v0
.end method
