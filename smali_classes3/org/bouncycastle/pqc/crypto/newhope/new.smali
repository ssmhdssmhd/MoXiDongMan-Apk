.class public Lorg/bouncycastle/pqc/crypto/newhope/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/ExchangePairGenerator;


# instance fields
.field private final do:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/new;->do:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public GenerateExchange(Landroid/support/v4/a4;)Landroid/support/v4/v80;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/new;->generateExchange(Landroid/support/v4/a4;)Landroid/support/v4/v80;

    move-result-object p1

    return-object p1
.end method

.method public generateExchange(Landroid/support/v4/a4;)Landroid/support/v4/v80;
    .locals 3

    check-cast p1, Landroid/support/v4/s11;

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/16 v1, 0x800

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/newhope/new;->do:Ljava/security/SecureRandom;

    iget-object p1, p1, Landroid/support/v4/s11;->if:[B

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->this(Ljava/security/SecureRandom;[B[B[B)V

    new-instance p1, Landroid/support/v4/v80;

    new-instance v2, Landroid/support/v4/s11;

    invoke-direct {v2, v1}, Landroid/support/v4/s11;-><init>([B)V

    invoke-direct {p1, v2, v0}, Landroid/support/v4/v80;-><init>(Landroid/support/v4/a4;[B)V

    return-object p1
.end method
