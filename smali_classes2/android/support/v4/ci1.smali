.class public final Landroid/support/v4/ci1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x8


# instance fields
.field private do:Lcom/google/zxing/qrcode/decoder/goto;

.field private for:Lcom/google/zxing/qrcode/decoder/this;

.field private if:Lcom/google/zxing/qrcode/decoder/case;

.field private new:I

.field private try:Landroid/support/v4/zd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/ci1;->new:I

    return-void
.end method

.method public static case(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public break(Lcom/google/zxing/qrcode/decoder/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ci1;->do:Lcom/google/zxing/qrcode/decoder/goto;

    return-void
.end method

.method public catch(Lcom/google/zxing/qrcode/decoder/this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ci1;->for:Lcom/google/zxing/qrcode/decoder/this;

    return-void
.end method

.method public do()Lcom/google/zxing/qrcode/decoder/case;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ci1;->if:Lcom/google/zxing/qrcode/decoder/case;

    return-object v0
.end method

.method public else(Lcom/google/zxing/qrcode/decoder/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ci1;->if:Lcom/google/zxing/qrcode/decoder/case;

    return-void
.end method

.method public for()Landroid/support/v4/zd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ci1;->try:Landroid/support/v4/zd;

    return-object v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ci1;->new:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ci1;->new:I

    return v0
.end method

.method public new()Lcom/google/zxing/qrcode/decoder/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ci1;->do:Lcom/google/zxing/qrcode/decoder/goto;

    return-object v0
.end method

.method public this(Landroid/support/v4/zd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ci1;->try:Landroid/support/v4/zd;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroid/support/v4/ci1;->do:Lcom/google/zxing/qrcode/decoder/goto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Landroid/support/v4/ci1;->if:Lcom/google/zxing/qrcode/decoder/case;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Landroid/support/v4/ci1;->for:Lcom/google/zxing/qrcode/decoder/this;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Landroid/support/v4/ci1;->new:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Landroid/support/v4/ci1;->try:Landroid/support/v4/zd;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Landroid/support/v4/ci1;->try:Landroid/support/v4/zd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Lcom/google/zxing/qrcode/decoder/this;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ci1;->for:Lcom/google/zxing/qrcode/decoder/this;

    return-object v0
.end method
