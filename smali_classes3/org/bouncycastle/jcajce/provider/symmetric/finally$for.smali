.class public final Lorg/bouncycastle/jcajce/provider/symmetric/finally$for;
.super Lorg/bouncycastle/jcajce/provider/symmetric/finally$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TLS11KDF"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/finally$goto;-><init>(Ljava/lang/String;)V

    return-void
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

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->if(Landroid/support/v4/b42;)[B

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
