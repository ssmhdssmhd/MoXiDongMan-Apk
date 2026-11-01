.class public Landroid/support/v4/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/a4;

.field private if:Landroid/support/v4/a4;


# direct methods
.method public constructor <init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/y3;->do:Landroid/support/v4/a4;

    iput-object p2, p0, Landroid/support/v4/y3;->if:Landroid/support/v4/a4;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/support/v4/a4;

    iput-object p1, p0, Landroid/support/v4/y3;->do:Landroid/support/v4/a4;

    check-cast p2, Landroid/support/v4/a4;

    iput-object p2, p0, Landroid/support/v4/y3;->if:Landroid/support/v4/a4;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y3;->if:Landroid/support/v4/a4;

    return-object v0
.end method

.method public if()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y3;->do:Landroid/support/v4/a4;

    return-object v0
.end method
