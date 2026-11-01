.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTKey;


# static fields
.field private static final serialVersionUID:J = 0x2cd46aae865a66a3L


# instance fields
.field private transient do:Lorg/bouncycastle/asn1/catch;

.field private transient if:Lorg/bouncycastle/pqc/crypto/xmss/static;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/static;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do(Lorg/bouncycastle/asn1/x509/try;)V

    return-void
.end method

.method private do(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ji2;->try(Ljava/lang/Object;)Landroid/support/v4/ji2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ji2;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/for;->if(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/static;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do(Lorg/bouncycastle/asn1/x509/try;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/static;->toByteArray()[B

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static;->toByteArray()[B

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/new;->do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v0

    return v0
.end method

.method public getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    return-object v0
.end method

.method public getLayers()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v0

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/try;->new(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;->if:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/static;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/q3;->n([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
