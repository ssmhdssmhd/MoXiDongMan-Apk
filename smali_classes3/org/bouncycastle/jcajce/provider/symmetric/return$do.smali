.class public Lorg/bouncycastle/jcajce/provider/symmetric/return$do;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private for:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/return$do;->for:I

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/ns1;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/support/v4/ns1;

    invoke-virtual {p1}, Landroid/support/v4/ns1;->case()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/ns1;->if()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/ns1;->for()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/ns1;->try()[C

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/gr0;

    sget-object v1, Lorg/bouncycastle/crypto/new;->UTF8:Lorg/bouncycastle/crypto/new;

    invoke-virtual {p1}, Landroid/support/v4/ns1;->try()[C

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/ns1;->case()[B

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/ns1;->if()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v4/ns1;->do()I

    move-result v6

    invoke-virtual {p1}, Landroid/support/v4/ns1;->new()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/ns1;->for()I

    move-result v1

    div-int/lit8 v8, v1, 0x8

    invoke-static/range {v3 .. v8}, Landroid/support/v4/tp1;->this([B[BIIII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/gr0;-><init>([B)V

    new-instance v1, Landroid/support/v4/d6;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;->do:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/v4/d6;-><init>(Ljava/lang/String;Ljava/security/spec/KeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "password empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive key length required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/ns1;->for()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cost parameter N must be > 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Salt S must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
