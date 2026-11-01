.class public Landroid/support/v4/da1;
.super Landroid/support/v4/ca1;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CZ[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/ca1;-><init>([CZ)V

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/da1;->salt:[B

    iput p4, p0, Landroid/support/v4/da1;->iterationCount:I

    return-void
.end method

.method public constructor <init>([C[BI)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/ca1;-><init>([C)V

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/da1;->salt:[B

    iput p3, p0, Landroid/support/v4/da1;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, Landroid/support/v4/da1;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/da1;->salt:[B

    return-object v0
.end method
