.class public Lorg/bouncycastle/pqc/crypto/newhope/for;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/r11;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 2

    check-cast p1, Landroid/support/v4/s11;

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/newhope/for;->do:Landroid/support/v4/r11;

    iget-object v1, v1, Landroid/support/v4/r11;->if:[S

    iget-object p1, p1, Landroid/support/v4/s11;->if:[B

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->goto([B[S[B)V

    return-object v0
.end method

.method public if(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Landroid/support/v4/r11;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/for;->do:Landroid/support/v4/r11;

    return-void
.end method
