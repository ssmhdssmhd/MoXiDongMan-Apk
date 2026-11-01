.class public Landroid/support/v4/gr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gr1;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/gr1;->if:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gr1;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gr1;->do:Ljava/math/BigInteger;

    return-object v0
.end method
