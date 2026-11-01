.class public final Landroid/support/v4/qi1;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field private for:[B

.field private if:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    array-length v0, p2

    invoke-static {p1}, Landroid/support/v4/ri1;->for(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/support/v4/qi1;->if:I

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qi1;->for:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key size for security category"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/qi1;->if:I

    return v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qi1;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
