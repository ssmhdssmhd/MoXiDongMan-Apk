.class public Landroid/support/v4/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/NHPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient do:Landroid/support/v4/s11;


# direct methods
.method public constructor <init>(Landroid/support/v4/s11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

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

    invoke-direct {p0, p1}, Landroid/support/v4/c6;->do(Lorg/bouncycastle/asn1/x509/try;)V

    return-void
.end method

.method private do(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/for;->if(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p1

    check-cast p1, Landroid/support/v4/s11;

    iput-object p1, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

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

    invoke-direct {p0, p1}, Landroid/support/v4/c6;->do(Lorg/bouncycastle/asn1/x509/try;)V

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

    invoke-virtual {p0}, Landroid/support/v4/c6;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/support/v4/c6;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/support/v4/c6;

    iget-object v0, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

    invoke-virtual {v0}, Landroid/support/v4/s11;->if()[B

    move-result-object v0

    iget-object p1, p1, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

    invoke-virtual {p1}, Landroid/support/v4/s11;->if()[B

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

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

.method public getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

    return-object v0
.end method

.method public getPublicData()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

    invoke-virtual {v0}, Landroid/support/v4/s11;->if()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c6;->do:Landroid/support/v4/s11;

    invoke-virtual {v0}, Landroid/support/v4/s11;->if()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->n([B)I

    move-result v0

    return v0
.end method
