.class Lorg/bouncycastle/jcajce/provider/drbg/do$else;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;
    }
.end annotation


# instance fields
.field private final baseRandom:Ljava/security/SecureRandom;

.field private final drbg:Lorg/bouncycastle/crypto/prng/if;

.field private final samples:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/do$case;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/do$case;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/do;->try()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->baseRandom:Ljava/security/SecureRandom;

    new-instance v2, Lorg/bouncycastle/crypto/prng/for;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/drbg/do$else$do;

    invoke-direct {v3, p0}, Lorg/bouncycastle/jcajce/provider/drbg/do$else$do;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/prng/for;-><init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V

    const-string v3, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v3}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/prng/for;->try([B)Lorg/bouncycastle/crypto/prng/for;

    move-result-object v2

    new-instance v3, Landroid/support/v4/pi0;

    new-instance v4, Landroid/support/v4/bq1;

    invoke-direct {v4}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v3, v4}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/prng/for;->if(Lorg/bouncycastle/crypto/Mac;[BZ)Lorg/bouncycastle/crypto/prng/if;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->drbg:Lorg/bouncycastle/crypto/prng/if;

    return-void
.end method

.method public static synthetic access$600(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->baseRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 2

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->drbg:Lorg/bouncycastle/crypto/prng/if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/prng/if;->reseed([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->drbg:Lorg/bouncycastle/crypto/prng/if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/prng/if;->nextBytes([B)V

    return-object p1
.end method

.method public setSeed(J)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->drbg:Lorg/bouncycastle/crypto/prng/if;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/if;->setSeed(J)V

    :cond_0
    return-void
.end method

.method public setSeed([B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->drbg:Lorg/bouncycastle/crypto/prng/if;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/prng/if;->setSeed([B)V

    :cond_0
    return-void
.end method
