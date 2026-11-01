.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/break;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/try;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private case:I

.field private else:I

.field private for:Z

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->for:Z

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->new:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->try:I

    iput p6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->case:I

    iput p7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->else:I

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/v4/d6;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->do:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->if:Lorg/bouncycastle/asn1/catch;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->new:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->try:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->case:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->else:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Landroid/support/v4/d6;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->for:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->new:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->try:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->case:I

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->else:I

    invoke-static {v8, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$do;->else(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->new:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->try:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->case:I

    invoke-static {v8, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$do;->try(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_0
    move-object v9, p1

    new-instance p1, Landroid/support/v4/d6;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->do:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->if:Lorg/bouncycastle/asn1/catch;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->new:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->try:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->case:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;->else:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Landroid/support/v4/d6;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
