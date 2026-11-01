.class public Lorg/bouncycastle/asn1/switch;
.super Landroid/support/v4/public;
.source "SourceFile"


# instance fields
.field private for:Z

.field private if:Z

.field private new:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/public;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/switch;->if:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/public;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/switch;->if:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/switch;->if:Z

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/switch;->for:Z

    iput p2, p0, Lorg/bouncycastle/asn1/switch;->new:I

    return-void
.end method

.method private new(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    return-object v0
.end method

.method public for(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/switch;->if:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/asn1/switch;->new:I

    or-int/lit16 v0, v0, 0x80

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/switch;->for:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/switch;->new(I)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    or-int/lit8 p1, v0, 0x20

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/switch;->new(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/switch;->new(I)V

    :goto_1
    return-void
.end method

.method public if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/switch;->if:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/switch;->for:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Landroid/support/v4/public;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return-void
.end method
