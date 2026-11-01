.class public Landroid/support/v4/x11;
.super Landroid/support/v4/w11;
.source "SourceFile"


# instance fields
.field private case:Ljava/util/Vector;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/util/Vector;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/w11;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Landroid/support/v4/x11;->case:Ljava/util/Vector;

    iput-object p5, p0, Landroid/support/v4/x11;->try:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public case()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x11;->case:Ljava/util/Vector;

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x11;->try:Ljava/math/BigInteger;

    return-object v0
.end method
