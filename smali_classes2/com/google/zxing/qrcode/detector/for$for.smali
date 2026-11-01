.class final Lcom/google/zxing/qrcode/detector/for$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/bc0;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/zxing/qrcode/detector/for$for;->average:F

    return-void
.end method

.method public synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/for$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/for$for;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/bc0;Landroid/support/v4/bc0;)I
    .locals 1

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/bc0;->this()F

    move-result p2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/for$for;->average:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/bc0;->this()F

    move-result p1

    iget v0, p0, Lcom/google/zxing/qrcode/detector/for$for;->average:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/bc0;

    check-cast p2, Landroid/support/v4/bc0;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/for$for;->compare(Landroid/support/v4/bc0;Landroid/support/v4/bc0;)I

    move-result p1

    return p1
.end method
