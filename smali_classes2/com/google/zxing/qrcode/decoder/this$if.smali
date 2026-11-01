.class public final Lcom/google/zxing/qrcode/decoder/this$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:I

.field private final if:[Lcom/google/zxing/qrcode/decoder/this$do;


# direct methods
.method public varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/this$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/this$if;->do:I

    .line 3
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/this$if;->if:[Lcom/google/zxing/qrcode/decoder/this$do;

    return-void
.end method


# virtual methods
.method public do()[Lcom/google/zxing/qrcode/decoder/this$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/this$if;->if:[Lcom/google/zxing/qrcode/decoder/this$do;

    return-object v0
.end method

.method public for()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/this$if;->if:[Lcom/google/zxing/qrcode/decoder/this$do;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/this$do;->do()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/this$if;->do:I

    return v0
.end method

.method public new()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/this$if;->do:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/this$if;->for()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
