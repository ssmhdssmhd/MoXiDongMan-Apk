.class Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public do:[B

.field public final synthetic if:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->if:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;->do(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;Ljava/security/PublicKey;)Landroid/support/v4/w22;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w22;->else()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->do:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->if:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->do:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->do:[B

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->do:[B

    invoke-static {v0, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$new;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->n([B)I

    move-result v0

    return v0
.end method
