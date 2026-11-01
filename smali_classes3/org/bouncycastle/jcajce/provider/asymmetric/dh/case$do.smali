.class Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case$do;->do:Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Landroid/support/v4/a4;)[B
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/support/v4/ku;

    invoke-virtual {v0}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    check-cast p1, Landroid/support/v4/ru;

    invoke-virtual {p1}, Landroid/support/v4/ru;->for()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/do;->if(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v2, p1

    if-gt v2, v0, :cond_0

    const/4 v2, 0x0

    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Senders\'s public key longer than expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
