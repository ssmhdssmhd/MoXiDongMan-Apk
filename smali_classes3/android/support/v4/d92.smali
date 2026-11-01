.class public Landroid/support/v4/d92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final do:[B

.field private final if:Landroid/support/v4/gr0;


# direct methods
.method public constructor <init>(Landroid/support/v4/gr0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d92;->if:Landroid/support/v4/gr0;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d92;->do:[B

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/gr0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d92;->if:Landroid/support/v4/gr0;

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d92;->do:[B

    return-object v0
.end method
