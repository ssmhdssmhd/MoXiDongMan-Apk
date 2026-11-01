.class Lcom/scwang/smartrefresh/header/DropBoxHeader$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public case:I

.field public do:I

.field public else:I

.field public for:I

.field public goto:I

.field public if:I

.field public new:I

.field public this:I

.field public try:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/scwang/smartrefresh/header/DropBoxHeader$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IIII)Lcom/scwang/smartrefresh/header/DropBoxHeader$try;
    .locals 5

    .line 1
    iput p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->this:I

    .line 2
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    sub-int/2addr p2, p4

    .line 3
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    mul-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    .line 4
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-double v1, p3

    const-wide v3, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p2, v1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    .line 6
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    div-int/lit8 p4, p3, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    .line 7
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    sub-int p4, p2, p4

    iput p4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->else:I

    sub-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    sub-int/2addr p2, p3

    .line 9
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    return-object p0
.end method
