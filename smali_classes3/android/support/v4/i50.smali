.class public Landroid/support/v4/i50;
.super Landroid/support/v4/t40;
.source "SourceFile"


# instance fields
.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Landroid/support/v4/d50;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v4/t40;-><init>(Landroid/support/v4/d50;)V

    iput-object p1, p0, Landroid/support/v4/i50;->if:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i50;->if:Ljava/math/BigInteger;

    return-object v0
.end method
