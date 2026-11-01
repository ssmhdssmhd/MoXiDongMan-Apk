.class public Landroid/support/v4/b10;
.super Landroid/support/v4/a10;
.source "SourceFile"


# instance fields
.field private final new:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/a10;-><init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Landroid/support/v4/b10;->new:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b10;->new:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;->getUpdatedPrivateKey()Landroid/support/v4/a4;

    move-result-object v0

    return-object v0
.end method
