.class public Landroid/support/v4/f02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field public static final for:I = 0x200

.field public static final if:I = 0x100

.field public static final new:I = 0x400


# instance fields
.field private do:Lorg/bouncycastle/crypto/digests/if;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/if;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/if;-><init>(II)V

    iput-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/f02;->do(Lorg/bouncycastle/crypto/params/case;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/f02;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/if;

    iget-object p1, p1, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/if;-><init>(Lorg/bouncycastle/crypto/digests/if;)V

    iput-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Landroid/support/v4/f02;

    invoke-direct {v0, p0}, Landroid/support/v4/f02;-><init>(Landroid/support/v4/f02;)V

    return-object v0
.end method

.method public do(Lorg/bouncycastle/crypto/params/case;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if;->goto(Lorg/bouncycastle/crypto/params/case;)V

    return-void
.end method

.method public doFinal([BI)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/if;->try([BI)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/if;->case()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/if;->else()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if;->case()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if;->else()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if;->class()V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Landroid/support/v4/f02;

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    iget-object p1, p1, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if;->while(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f02;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/if;->import([BII)V

    return-void
.end method
