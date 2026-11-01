.class public Lorg/bouncycastle/util/test/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final do:Ljava/security/SecureRandom;

.field private final if:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/util/test/try;->do:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/util/test/try;->if:Z

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/util/test/try;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/util/test/try;->if:Z

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/util/test/try;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/util/test/try;->do:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/test/try$do;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/util/test/try$do;-><init>(Lorg/bouncycastle/util/test/try;I)V

    return-object v0
.end method
