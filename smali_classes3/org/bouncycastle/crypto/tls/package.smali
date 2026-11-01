.class public Lorg/bouncycastle/crypto/tls/package;
.super Landroid/support/v4/i;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/TlsContext;

.field public for:Landroid/support/v4/a4;

.field public if:Lorg/bouncycastle/crypto/tls/break;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/break;Landroid/support/v4/a4;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/i;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Landroid/support/v4/ck1;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/package;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/package;->if:Lorg/bouncycastle/crypto/tls/break;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/package;->for:Landroid/support/v4/a4;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'privateKey\' type not supported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decryptPreMasterSecret([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/package;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/package;->for:Landroid/support/v4/a4;

    check-cast v1, Landroid/support/v4/ck1;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/d0;->if(Lorg/bouncycastle/crypto/tls/TlsContext;Landroid/support/v4/ck1;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/crypto/tls/break;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/package;->if:Lorg/bouncycastle/crypto/tls/break;

    return-object v0
.end method
