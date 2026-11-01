.class Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:I

.field public final synthetic if:Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->if:Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->do:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->if:Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;->do(Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->if:Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;

    iget-object v1, v1, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;->new:Lorg/bouncycastle/jcajce/provider/drbg/do$else;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->access$600(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)Ljava/security/SecureRandom;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->do:I

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if$do;->if:Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;

    iget-object v0, v0, Lorg/bouncycastle/jcajce/provider/drbg/do$else$if;->new:Lorg/bouncycastle/jcajce/provider/drbg/do$else;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/do$else;->access$800(Lorg/bouncycastle/jcajce/provider/drbg/do$else;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
