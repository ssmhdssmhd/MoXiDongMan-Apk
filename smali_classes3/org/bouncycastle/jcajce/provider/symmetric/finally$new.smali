.class public Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;
.super Lorg/bouncycastle/jcajce/provider/symmetric/finally$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private final for:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/finally$goto;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;->for:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method private do(Landroid/support/v4/b42;Lorg/bouncycastle/crypto/Mac;)[B
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/b42;->do()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/b42;->new()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/b42;->for()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/b42;->if()I

    move-result p1

    new-array p1, p1, [B

    invoke-static {p2, v1, v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->for(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    return-object p1
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/b42;

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Landroid/support/v4/b42;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;->for:Lorg/bouncycastle/crypto/Mac;

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;->do(Landroid/support/v4/b42;Lorg/bouncycastle/crypto/Mac;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->do:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
