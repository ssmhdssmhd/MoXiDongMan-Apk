.class public Landroid/support/v4/x8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final if:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/x8;->do:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Landroid/support/v4/x8;->if:I

    return-void
.end method


# virtual methods
.method public break(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    or-int/2addr p1, v0

    return p1
.end method

.method public case(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->else(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public catch(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->break(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->do(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public class(B)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->break(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public const(BZ)B
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->class(B)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->if(B)B

    move-result p1

    :goto_0
    return p1
.end method

.method public do(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public else(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->new(I)I

    move-result p1

    iget v0, p0, Landroid/support/v4/x8;->if:I

    shr-int/2addr p1, v0

    return p1
.end method

.method public final(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->break(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public for(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->do(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public goto(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if(B)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->do(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public new(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    and-int/2addr p1, v0

    return p1
.end method

.method public super(SZ)S
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->final(S)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->for(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method public this(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public throw(SS)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/x8;->while(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public try(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/x8;->new(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public while(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/x8;->do:I

    xor-int/lit8 v1, v0, -0x1

    and-int/2addr p1, v1

    iget v1, p0, Landroid/support/v4/x8;->if:I

    shl-int/2addr p2, v1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method
