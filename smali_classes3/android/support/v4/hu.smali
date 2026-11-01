.class public Landroid/support/v4/hu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private for:[B

.field private if:I

.field private new:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/hu;-><init>(Lorg/bouncycastle/asn1/catch;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hu;->do:Lorg/bouncycastle/asn1/catch;

    iput p2, p0, Landroid/support/v4/hu;->if:I

    iput-object p3, p0, Landroid/support/v4/hu;->for:[B

    iput-object p4, p0, Landroid/support/v4/hu;->new:[B

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hu;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/hu;->if:I

    return v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hu;->new:[B

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hu;->for:[B

    return-object v0
.end method
