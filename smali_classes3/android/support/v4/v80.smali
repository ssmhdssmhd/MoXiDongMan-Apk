.class public Landroid/support/v4/v80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/a4;

.field private final if:[B


# direct methods
.method public constructor <init>(Landroid/support/v4/a4;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v80;->do:Landroid/support/v4/a4;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/v80;->if:[B

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v80;->do:Landroid/support/v4/a4;

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v80;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
