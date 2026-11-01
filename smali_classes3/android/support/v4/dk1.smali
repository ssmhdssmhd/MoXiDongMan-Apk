.class public Landroid/support/v4/dk1;
.super Landroid/support/v4/ck1;
.source "SourceFile"


# instance fields
.field private break:Ljava/math/BigInteger;

.field private case:Ljava/math/BigInteger;

.field private else:Ljava/math/BigInteger;

.field private goto:Ljava/math/BigInteger;

.field private this:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Landroid/support/v4/ck1;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p0, Landroid/support/v4/dk1;->try:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/dk1;->case:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/support/v4/dk1;->else:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/support/v4/dk1;->goto:Ljava/math/BigInteger;

    iput-object p7, p0, Landroid/support/v4/dk1;->this:Ljava/math/BigInteger;

    iput-object p8, p0, Landroid/support/v4/dk1;->break:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->break:Ljava/math/BigInteger;

    return-object v0
.end method

.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->this:Ljava/math/BigInteger;

    return-object v0
.end method

.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->case:Ljava/math/BigInteger;

    return-object v0
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->else:Ljava/math/BigInteger;

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dk1;->goto:Ljava/math/BigInteger;

    return-object v0
.end method
