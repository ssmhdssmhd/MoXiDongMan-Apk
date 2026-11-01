.class public Lorg/bouncycastle/crypto/macs/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


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

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/macs/break;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/if;

    iget-object p1, p1, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/if;-><init>(Lorg/bouncycastle/crypto/digests/if;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/if;->try([BI)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-MAC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/if;->case()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/if;->else()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if;->else()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/case;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/case;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/support/v4/gr0;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/params/case$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/params/case$if;-><init>()V

    check-cast p1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/params/case$if;->for([B)Lorg/bouncycastle/crypto/params/case$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/case$if;->do()Lorg/bouncycastle/crypto/params/case;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/case;->if()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if;->goto(Lorg/bouncycastle/crypto/params/case;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Skein MAC requires a key parameter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to Skein MAC init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if;->class()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if;->while(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/break;->do:Lorg/bouncycastle/crypto/digests/if;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/if;->import([BII)V

    return-void
.end method
