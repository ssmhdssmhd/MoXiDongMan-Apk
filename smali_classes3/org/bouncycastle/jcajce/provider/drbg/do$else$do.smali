.class Lorg/bouncycastle/jcajce/provider/drbg/do$else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/do$else;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/jcajce/provider/drbg/do$else;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$do;->do:Lorg/bouncycastle/jcajce/provider/drbg/do$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$do;->do:Lorg/bouncycastle/jcajce/provider/drbg/do$else;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/do$else;I)V

    return-object v0
.end method
