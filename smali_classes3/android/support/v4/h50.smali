.class public Landroid/support/v4/h50;
.super Landroid/support/v4/s40;
.source "SourceFile"


# instance fields
.field public for:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Landroid/support/v4/e40;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/support/v4/s40;-><init>(ZLandroid/support/v4/e40;)V

    iput-object p1, p0, Landroid/support/v4/h50;->for:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h50;->for:Ljava/math/BigInteger;

    return-object v0
.end method
