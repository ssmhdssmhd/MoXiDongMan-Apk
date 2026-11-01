.class public final Lorg/bouncycastle/jcajce/spec/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private for:Ljava/security/spec/AlgorithmParameterSpec;

.field private final if:I

.field private new:Landroid/support/v4/b1;

.field private try:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/do$if;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->do:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/spec/do$if;->if:I

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {p1, p2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->new:Landroid/support/v4/b1;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->try:[B

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/jcajce/spec/do;
    .locals 8

    new-instance v7, Lorg/bouncycastle/jcajce/spec/do;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->do:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/jcajce/spec/do$if;->if:I

    iget-object v3, p0, Lorg/bouncycastle/jcajce/spec/do$if;->for:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/spec/do$if;->new:Landroid/support/v4/b1;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/spec/do$if;->try:[B

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/spec/do;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Landroid/support/v4/b1;[BLorg/bouncycastle/jcajce/spec/do$do;)V

    return-object v7
.end method

.method public for(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/jcajce/spec/do$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->for:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public if(Landroid/support/v4/b1;)Lorg/bouncycastle/jcajce/spec/do$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do$if;->new:Landroid/support/v4/b1;

    return-object p0
.end method
