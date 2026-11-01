.class public final enum Lcom/wsw/cospa/widget/scroller/FastScroller$Size;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/scroller/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wsw/cospa/widget/scroller/FastScroller$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

.field public static final enum NORMAL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

.field public static final enum SMALL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;


# instance fields
.field public drawableId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public textSizeId:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const v3, 0x7f0800a6

    const v4, 0x7f0700ab

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->NORMAL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    .line 2
    new-instance v1, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    const v5, 0x7f0800a7

    const v6, 0x7f0700ac

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->SMALL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->$VALUES:[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->drawableId:I

    .line 3
    iput p4, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->textSizeId:I

    return-void
.end method

.method public static fromOrdinal(I)Lcom/wsw/cospa/widget/scroller/FastScroller$Size;
    .locals 1

    if-ltz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->values()[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->values()[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    move-result-object v0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->NORMAL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wsw/cospa/widget/scroller/FastScroller$Size;
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    return-object p0
.end method

.method public static values()[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->$VALUES:[Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    invoke-virtual {v0}, [Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    return-object v0
.end method
