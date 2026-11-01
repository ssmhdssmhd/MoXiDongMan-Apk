.class public Landroid/support/v4/ng0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final do:[B

.field private final for:[B

.field private final if:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/ng0;-><init>([BI[B)V

    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ng0;->do:[B

    iput p2, p0, Landroid/support/v4/ng0;->if:I

    iput-object p3, p0, Landroid/support/v4/ng0;->for:[B

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ng0;->for:[B

    return-object v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ng0;->do:[B

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ng0;->if:I

    return v0
.end method
