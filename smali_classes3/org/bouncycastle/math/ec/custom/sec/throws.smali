.class public Lorg/bouncycastle/math/ec/custom/sec/throws;
.super Lorg/bouncycastle/math/ec/if$if;
.source "SourceFile"


# static fields
.field private static final native:I = 0x6


# instance fields
.field public import:Landroid/support/v4/xv1;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xef

    const/16 v1, 0x9e

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/bouncycastle/math/ec/if$if;-><init>(IIII)V

    new-instance v0, Landroid/support/v4/xv1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/support/v4/xv1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/throws;->import:Landroid/support/v4/xv1;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/throws;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/throws;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/if;->case:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0x9e

    return v0
.end method

.method public break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 1

    new-instance v0, Landroid/support/v4/xv1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/xv1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 6

    mul-int/lit8 v0, p3, 0x4

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    check-cast v5, Landroid/support/v4/wv1;

    iget-object v5, v5, Landroid/support/v4/wv1;->do:[J

    invoke-static {v5, v1, v0, v3}, Landroid/support/v4/k21;->break([JI[JI)V

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    check-cast v4, Landroid/support/v4/wv1;

    iget-object v4, v4, Landroid/support/v4/wv1;->do:[J

    invoke-static {v4, v1, v0, v3}, Landroid/support/v4/k21;->break([JI[JI)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/throws$do;

    invoke-direct {p1, p0, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/throws$do;-><init>(Lorg/bouncycastle/math/ec/custom/sec/throws;I[J)V

    return-object p1
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 7

    new-instance v6, Landroid/support/v4/xv1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/xv1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v6
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public else()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/const;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/const;-><init>()V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new()Lorg/bouncycastle/math/ec/if;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/throws;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/throws;-><init>()V

    return-object v0
.end method

.method public super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;
    .locals 1

    new-instance v0, Landroid/support/v4/wv1;

    invoke-direct {v0, p1}, Landroid/support/v4/wv1;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public switch()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public synchronized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public throws()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/throws;->import:Landroid/support/v4/xv1;

    return-object v0
.end method

.method public volatile(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
