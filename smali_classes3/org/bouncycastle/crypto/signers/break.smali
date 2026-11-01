.class public Lorg/bouncycastle/crypto/signers/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final do:Lorg/bouncycastle/crypto/signers/break;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/signers/break;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/break;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/signers/break;->do:Lorg/bouncycastle/crypto/signers/break;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/signers/break;->if(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/super;I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v0, v4}, Lorg/bouncycastle/crypto/signers/break;->if(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/super;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/crypto/signers/break;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/math/BigInteger;

    aput-object v3, p1, v1

    aput-object v0, p1, v4

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed signature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/signers/break;->for(Ljava/math/BigInteger;Landroid/support/v4/import;Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/signers/break;->for(Ljava/math/BigInteger;Landroid/support/v4/import;Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    const-string p2, "DER"

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/math/BigInteger;Landroid/support/v4/import;Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/signers/break;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public if(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/super;I)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/signers/break;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
