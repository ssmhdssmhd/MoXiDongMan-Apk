.class public Lorg/bouncycastle/math/ec/const;
.super Landroid/support/v4/volatile;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/volatile;-><init>()V

    return-void
.end method

.method private static for(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/if$if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    new-instance v2, Lorg/bouncycastle/math/ec/const$do;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/math/ec/const$do;-><init>(Lorg/bouncycastle/math/ec/new$if;B)V

    const-string v1, "bc_wtnaf"

    invoke-virtual {v0, p0, v1, v2}, Lorg/bouncycastle/math/ec/if;->strictfp(Lorg/bouncycastle/math/ec/new;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/final;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/final;->do()[Lorg/bouncycastle/math/ec/new$if;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/bouncycastle/math/ec/new$if;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/new$if;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/new$if;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p1, v3

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/new$if;->c(I)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p0

    if-lez v5, :cond_1

    ushr-int/lit8 v4, v5, 0x1

    aget-object v4, v0, v4

    goto :goto_2

    :cond_1
    neg-int v4, v5

    ushr-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    :goto_2
    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/new$if;

    const/4 v4, 0x0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/new$if;->c(I)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private new(Lorg/bouncycastle/math/ec/new$if;Lorg/bouncycastle/math/ec/super;BB)Lorg/bouncycastle/math/ec/new$if;
    .locals 6

    if-nez p3, :cond_0

    sget-object p3, Lorg/bouncycastle/math/ec/this;->case:[Lorg/bouncycastle/math/ec/super;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/bouncycastle/math/ec/this;->goto:[Lorg/bouncycastle/math/ec/super;

    :goto_0
    move-object v5, p3

    const/4 p3, 0x4

    invoke-static {p4, p3}, Lorg/bouncycastle/math/ec/this;->break(BI)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v2, 0x4

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p4

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/this;->public(BLorg/bouncycastle/math/ec/super;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/super;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/const;->for(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public if(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;
    .locals 9

    instance-of v0, p1, Lorg/bouncycastle/math/ec/new$if;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/new$if;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/if$if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/math/ec/this;->for(I)B

    move-result v8

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if$if;->implements()[Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0xa

    move-object v1, p2

    move v3, v7

    move v5, v8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/this;->throw(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/super;

    move-result-object p2

    invoke-direct {p0, p1, p2, v7, v8}, Lorg/bouncycastle/math/ec/const;->new(Lorg/bouncycastle/math/ec/new$if;Lorg/bouncycastle/math/ec/super;BB)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
