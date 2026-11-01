.class public Landroid/support/v4/ar1;
.super Landroid/support/v4/zq1;
.source "SourceFile"


# instance fields
.field private final try:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/zq1;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ar1;->try:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/support/v4/zq1;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ar1;->try:[B

    return-void
.end method


# virtual methods
.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ar1;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
