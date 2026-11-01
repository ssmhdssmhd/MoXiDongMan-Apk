.class public Lorg/bouncycastle/math/ec/else;
.super Landroid/support/v4/volatile;
.source "SourceFile"


# instance fields
.field public do:I

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/else;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/volatile;-><init>()V

    iput p1, p0, Lorg/bouncycastle/math/ec/else;->do:I

    iput p2, p0, Lorg/bouncycastle/math/ec/else;->if:I

    return-void
.end method


# virtual methods
.method public for(Lorg/bouncycastle/math/ec/if;I)Lorg/bouncycastle/math/ec/if;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/if;->volatile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->try()Lorg/bouncycastle/math/ec/if$new;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/if$new;->if(I)Lorg/bouncycastle/math/ec/if$new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if$new;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coordinate system "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not supported by this curve"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;
    .locals 8

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/else;->do:I

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/math/ec/else;->for(Lorg/bouncycastle/math/ec/if;I)Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/else;->if:I

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/math/ec/else;->for(Lorg/bouncycastle/math/ec/if;I)Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-static {p2}, Lorg/bouncycastle/math/ec/class;->for(Ljava/math/BigInteger;)[I

    move-result-object p2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/if;->package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    const/4 v2, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_1

    aget v5, p2, v2

    shr-int/lit8 v6, v5, 0x10

    const v7, 0xffff

    and-int/2addr v5, v7

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/new;->instanceof(I)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/if;->package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    if-gez v6, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    :cond_0
    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/if;->package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
