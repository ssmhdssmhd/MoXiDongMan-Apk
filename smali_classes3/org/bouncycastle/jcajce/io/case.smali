.class public Lorg/bouncycastle/jcajce/io/case;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/security/MessageDigest;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/io/for;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/for;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static for(Ljavax/crypto/Mac;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/io/try;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/try;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method

.method public static if(Ljava/security/Signature;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/io/else;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/else;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method
