.class public Landroid/support/v4/s11;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field public final if:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/s11;->if:[B

    return-void
.end method


# virtual methods
.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/s11;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
