.class Lcom/suke/widget/SwitchButton$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suke/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field public do:F

.field public for:I

.field public if:I

.field public new:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/suke/widget/SwitchButton$new;Lcom/suke/widget/SwitchButton$new;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/suke/widget/SwitchButton$new;->if(Lcom/suke/widget/SwitchButton$new;)V

    return-void
.end method

.method private if(Lcom/suke/widget/SwitchButton$new;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/suke/widget/SwitchButton$new;->do:F

    iput v0, p0, Lcom/suke/widget/SwitchButton$new;->do:F

    .line 2
    iget v0, p1, Lcom/suke/widget/SwitchButton$new;->if:I

    iput v0, p0, Lcom/suke/widget/SwitchButton$new;->if:I

    .line 3
    iget v0, p1, Lcom/suke/widget/SwitchButton$new;->for:I

    iput v0, p0, Lcom/suke/widget/SwitchButton$new;->for:I

    .line 4
    iget p1, p1, Lcom/suke/widget/SwitchButton$new;->new:F

    iput p1, p0, Lcom/suke/widget/SwitchButton$new;->new:F

    return-void
.end method
